require("helpers")
local sti = require "sti"
local T = require "tablehelpers"
local M = require "maploader"

function love.load()
    love.window.setMode(1024, 768)
    local font = love.graphics.newFont(12)
    love.graphics.setFont(font)

    maps = M.loadAll(island)
    print(T.debugString(maps.island.meta.portals))
end

function love.update(dt)
end

function love.draw()
end
