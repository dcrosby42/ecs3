local sti = require "sti"

function love.load()
    love.window.setMode(1024, 768)
    map = sti("assets/maps/map1.lua")
end

function love.update(dt)
    map:update(dt)
end

function love.draw()
    map:draw(0, 0, 3, 3)
end
