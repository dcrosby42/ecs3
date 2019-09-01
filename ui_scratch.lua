require("helpers")
local suit = require("suit")
-- local sti = require "sti"

local function ascending(a, b)
    return a < b
end

function love.load()
    love.window.setMode(1024, 768)
    -- local font = love.graphics.newFont(12)
    -- map = sti("assets/maps/map1.lua")
    -- print(tdebug(map))
    local font = love.graphics.newFont(12)
    love.graphics.setFont(font)
end

local slider = {value = 1, max = 2}

function love.update(dt)
    suit.Slider(slider, 100, 100, 200, 15)
    suit.Label(tostring(slider.value), {align = "left"}, 300, 100, 200, 30)

    -- Put a button on the screen. If hit, show a message.
    if suit.Button("Hello, World!", 100, 200, 100, 30).hit then
        show_message = true
    end

    -- if the button was pressed at least one time, but a label below
    if show_message then
        suit.Label("How are you today?", 100, 250, 300, 30)
    end
end

function love.draw()
    suit.draw()
end

table.sort(tablename, sortfunction)
