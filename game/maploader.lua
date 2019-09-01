local sti = require("sti")
local M = {}

local function loadMapMeta(map)
    local m = {
        portals = {}
    }
    for i, obj in pairs(map.layers.objects.objects) do
        if obj.type == "portal" then
            local p = {
                type = "portal",
                name = obj.name,
                target = {
                    map = obj.properties.targetMap,
                    portal = obj.properties.targetPortal
                }
            }
            m.portals[#m.portals + 1] = p
        end
    end
    return m
end

local function loadMapsInto(name, ms)
    if not ms[name] then
        local map = sti("assets/maps/" .. name .. ".lua")
        local meta = loadMapMeta(map)
        ms[name] = {
            map = map,
            meta = meta
        }
        for _, portal in ipairs(meta.portals) do
            local ok, err =
                xpcall(
                function()
                    loadMapsInto(portal.target.map, ms)
                end,
                debug.traceback
            )
            if not ok then
                print("OOPS: " .. err)
            end
        end
    end
end

function M.loadAll(mapname)
    local maps = {}
    loadMapsInto(mapname, maps)
    return maps
end

return M
