local console = require "console"

local game = require("game"):new()

function love.load()
    love.window.setMode(1024, 768)

    local font = love.graphics.newFont(12)
    console.load(font)
    game:load()
    -- console.d(game.world.e:tostring())
end

function love.update(dt)
    console.update(dt)
    game:update(dt)
end

function love.draw()
    game:draw()
    console.draw()
end

function love.keypressed(key)
    if console.keypressed(key) then
        return
    end
    -- game:keypressed(key)
end

function love.textinput(t)
    console.textinput(t)
    -- game:textinput(t)
end

function love.resize(w, h)
    console.resize(w, h)
    -- game:resize(w,h)
end

function love.mousepressed(x, y, button)
    if console.mousepressed(x, y, button) then
        return
    end
    -- game:mousepressed(x,y,button)
end

function love.wheelmoved(x, y)
    if console.wheelmoved(x, y) then
        return
    end
    -- game:wheelmoved(x,y)
end
