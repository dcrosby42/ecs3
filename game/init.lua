local loadTiledMap = require "sti"
local Entity = require "entity"

local updateEntity = require "game.update"
local drawEntity = require "game.draw"

-- local R = {}
-- local W = {}

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
    self.res.map1 = loadTiledMap("assets/maps/map1.lua")

    -- ENTITIES
    local mapEnt = Entity:new()
    mapEnt:newComp({type = "map", resource = "map1"})
    mapEnt:newComp({type = "camera", tx = 0, ty = 0, sx = 3, sy = 3})

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
