local console = require "console"
local loadTiledMap = require "sti"
local Entity = require "entity"

function updateEntity(e, input, res)
    e:withComp(
        "map",
        function(map)
            res[map.resource]:update(input.dt)
        end
    )
    e:withComp(
        "camera",
        function(camera)
            -- camera.tx = camera.tx + 1
        end
    )
end

function drawEntity(e, res)
    e:withComp(
        "map",
        function(map)
            local tx = 0
            local ty = 0
            local sx = 1
            local sy = 1
            e:withComp(
                "camera",
                function(cam)
                    tx = cam.tx
                    ty = cam.ty
                    sx = cam.sx
                    sy = cam.sy
                end
            )
            res[map.resource]:draw(tx, ty, sx, sy)
        end
    )
end

local R = {}

function love.load()
    love.window.setMode(1024, 768)

    console.load()

    R.map1 = loadTiledMap("assets/maps/map1.lua")

    e = Entity:new()
    e:newComp({type = "map", resource = "map1"})
    e:newComp({type = "camera", tx = 0, ty = 0, sx = 3, sy = 3})
end

function love.update(dt)
    console.update(dt)
    updateEntity(e, {dt = dt}, R)
end

function love.draw()
    drawEntity(e, R)
    console.draw()
end

function love.keypressed(key)
    if console.keypressed(key) then
        return
    end
end

function love.textinput(t)
    console.textinput(t)
end

function love.resize(w, h)
    console.resize(w, h)
end

function love.mousepressed(x, y, button)
    if console.mousepressed(x, y, button) then
        return
    end
end
