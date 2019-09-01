local MapLoader = require "game.maploader"
local ScriptLoader = require "game.scriptloader"
local Entity = require "entity"
local gameconsole = require "game.console"
local json = require "json"

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

function Game:load()
    -- RESOURCES
    self.res.maps = MapLoader.loadAll("island")
    for k, m in pairs(self.res.maps) do
        for _, layer in pairs(m.map.layers) do
            if layer.type == "objectgroup" then
                layer.visible = false
            end
        end
    end

    self.res.scripts = ScriptLoader.loadAll()

    -- ENTITIES
    local mapEnt = Entity:new()
    mapEnt:newComp({type = "map", resource = "southgarden"})
    mapEnt:newComp({type = "camera", tx = 0, ty = 0, sx = 3, sy = 3})
    mapEnt:newComp({type = "script", name = "mapflip"})

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

    self.world.e = mapEnt
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
