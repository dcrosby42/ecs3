local MapLoader = require "game.maploader"
local ScriptLoader = require "game.scriptloader"
local Entity = require "entity"
local gameconsole = require "game.console"
local json = require "json"
local T = require "tablehelpers"

j = gameconsole.j

local updateEntity = require "game.update"
local drawEntity = require "game.draw"

local Game = {}
Game.__index = Game

function Game:new()
    local game = setmetatable({}, Game)
    game.world = {}
    game.res = {}
    game.input = {}
    return game
end

local DefaultMapScale = 3
function initializeEntitiesFromMap(mapName, res)
    local map = res.maps[mapName]
    if not map then
        error("No map named " .. mapName)
    end

    local mapEnt = Entity:new()
    mapEnt:newComp({type = "map", resource = mapName})
    mapEnt:newComp({type = "camera", tx = 0, ty = 0, sx = DefaultMapScale, sy = DefaultMapScale})
    -- mapEnt:newComp({type = "script", name = "mapflip"})

    -- self.res.maps[initialMap].map.layers.objects.objects)

    for k, edef in pairs(map.meta.entity) do
        if edef.entity.type == "dyrkn" then
            -- print(T.debugString(edef))
            local e = Entity:new()
            e:newComp(
                {
                    type = "rect",
                    x = edef.mapobj.x,
                    y = edef.mapobj.y,
                    w = edef.mapobj.width,
                    h = edef.mapobj.height
                }
            )
            e:newComp({type = "label", text = edef.name})
            print(e:tostring())
            mapEnt:addChild(e)
        end
    end

    -- local map = map1
    -- if map.layers.westpoint.layers.plan then
    --     for i, obj in ipairs(map.layers.westpoint.layers.plan.objects) do
    --         if obj.type == "spawn" then
    --             local playerEnt = Entity:new()
    --             playerEnt:newComp({type = "rect", x = obj.x, y = obj.y, w = obj.width, h = obj.height})
    --             playerEnt:newComp({type = "label", text = obj.name})
    --             mapEnt:addChild(playerEnt)
    --         end
    --     end
    -- end
    return mapEnt
end

function Game:load()
    -- RESOURCES
    self.res.maps = MapLoader.loadAll("island")
    self.res.scripts = ScriptLoader.loadAll()

    local initialMap = "?"
    for _, m in pairs(self.res.maps) do
        if m.startHere then
            initialMap = m.name
        end
    end
    print("initial map: " .. initialMap)

    self.world.e = initializeEntitiesFromMap(initialMap, self.res)

    -- self.world.e = mapEnt
end

function Game:update(dt)
    self.input.dt = dt
    updateEntity(self.world.e, self.input, self.res)
    self.input = {}
end

function Game:draw()
    drawEntity(self.world.e, self.res)
end

return Game
