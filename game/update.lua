local T = require("tablehelpers")
local updateEntity, updateEntities

function updateEntities(es, input, res)
    for i = 1, #es do
        updateEntity(es[i], input, res)
    end
end

function updateEntity(e, input, res)
    e:withComp(
        "controller",
        function(con)
            local kbd = input.keyboard
            if kbd.isDown("s") then
                con.justDown = not con.down
                con.down = true
                con.lastDir = "down"
            else
                con.justDown = false
                con.down = false
            end
            if kbd.isDown("w") then
                con.justUp = not con.up
                con.up = true
                con.lastDir = "up"
            else
                con.justUp = false
                con.up = false
            end
            if kbd.isDown("a") then
                con.justLeft = not con.left
                con.left = true
                con.lastDir = "left"
            else
                con.justLeft = false
                con.left = false
            end
            if kbd.isDown("d") then
                con.justRight = not con.right
                con.right = true
                con.lastDir = "right"
            else
                con.justRight = false
                con.right = false
            end
        end
    )

    e:withComp(
        "script",
        function(scriptComp)
            local scriptRes = res.scripts[scriptComp.name]
            if scriptRes then
                scriptRes.fn(scriptComp, e, input, res)
            end
            -- camera.tx = camera.tx + 1
        end
    )

    e:withComp(
        "map",
        function(map)
            local m = res.maps[map.resource]
            m.map:update(input.dt)
            -- XXX res[map.resource]:update(input.dt)
        end
    )
    e:withComp(
        "camera",
        function(camera)
            -- camera.tx = camera.tx + 1
        end
    )
    e:withComp(
        "sprite",
        function(sprite)
            local anim = res.sprites[sprite.anim]
            if anim then
                sprite.t = (sprite.t + input.dt) % anim.time
            end
        end
    )
    updateEntities(e.children, input, res)
end

return updateEntity
