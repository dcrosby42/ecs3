local sti = require("sti")
local T = require("tablehelpers")
local M = {}

-- Map
--   name
--   map  TODO rename this field to "tiled"
--   meta
--     portal (name->Portal)
--       type
--       name
--       target
--         map
--         portal
--       mapobj
--
--     entity (name->Entity)
--       type
--       name
--       init
--       entity
--         type
--       mapobj
--

function interpretObject(obj)
    if obj.type == "portal" then
        -- obj.properties: targetMap, targetPortal
        -- output: type=portal, name, target{map, portal}
        local p = {
            mapobj = obj,
            type = "portal",
            name = obj.name,
            target = {
                map = obj.properties.targetMap,
                portal = obj.properties.targetPortal
            }
        }
        return p
    elseif obj.type == "entity" then
        -- obj.properties: init, entityType
        -- output: type=entity, name, init, entity{type}
        local e = {
            mapobj = obj,
            type = "entity",
            name = obj.name,
            init = (obj.properties.init == true),
            entity = {
                type = obj.properties.entityType
            }
        }
        return e
    end
    print("interpretObject: unhandled type=" .. obj.type .. " id=" .. obj.id .. " name=" .. obj.name)
    return nil
end

-- loadMapMeta() iterates all the "objectgroup" type layers in the given Tiled map.
--
local function loadMapMeta(tiledMap)
    local meta = {}
    for i, layer in ipairs(tiledMap.layers) do
        if layer.type == "objectgroup" then
            for i, o in ipairs(layer.objects) do
                local obj = interpretObject(o)
                if obj then
                    if meta[obj.type] == nil then
                        meta[obj.type] = {}
                    end
                    meta[obj.type][obj.name] = obj
                end
            end
        end
    end
    return meta
end

-- loadMapsInto() loads an exported Tiled map and collects its metadata from object layers.
-- name: string.  name of the map, interpolated into "assets/maps/{name}.lua"
-- ms: table of (name -> Map) that gets populated as maps are loaded.
-- RECURSIVE! Once loaded and interpreted, any referenced maps in the metadata are also loaded.
-- Once this func returns, ms is populated with all the loaded maps.
local function loadMapsInto(name, ms)
    if not ms[name] then
        local tiled = sti("assets/maps/" .. name .. ".lua")
        local meta = loadMapMeta(tiled)
        local startHere = (tiled.properties.startHere == true)
        ms[name] = {
            name = name,
            map = tiled,
            meta = meta,
            startHere = startHere
        }
        for _, portal in ipairs(meta.portal) do
            local ok, err =
                xpcall(
                function()
                    loadMapsInto(portal.target.map, ms)
                end,
                debug.traceback
            )
            if not ok then
                print(
                    "ERR! loadMapsInto map=" ..
                        name ..
                            " portal.target.portal=" ..
                                portal.target.portal .. " portal.target.map=" .. portal.target.map .. ": " .. err
                )
            end
        end
    end
end

function hideObjectLayers(maps)
    for k, m in pairs(maps) do
        for _, layer in pairs(m.map.layers) do
            if layer.type == "objectgroup" then
                layer.visible = false
            end
        end
    end
end

function M.loadAll(mapname)
    local maps = {}
    loadMapsInto(mapname, maps)
    hideObjectLayers(maps)
    return maps
end

return M
