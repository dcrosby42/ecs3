local console = require("console")

local drawEntity
local drawEntities

local LabelFont = love.graphics.newFont(8)

function drawEntities(es, res)
    for i = 1, #es do
        drawEntity(es[i], res)
    end
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
            -- res[map.resource]:draw(tx, ty, sx, sy)
            local m = res.maps[map.resource]
            if m then
                m.map:draw(tx, ty, sx, sy)
            end
            love.graphics.push()
            love.graphics.translate(tx, ty)
            love.graphics.scale(sx, sy)

            drawEntities(e.children, res)

            love.graphics.pop()
        end
    )

    e:withComp(
        "label",
        function(label)
            e:withComp(
                "rect",
                function(rect)
                    love.graphics.setFont(LabelFont)
                    love.graphics.rectangle("line", rect.x, rect.y, rect.w, rect.h)
                    love.graphics.print(label.text, rect.x, rect.y)
                end
            )
        end
    )

    drawSprite(e, res)
end

function drawSprite(e, res)
    local sprite = e:getComp("sprite")
    local rect = e:getComp("rect")
    if sprite == nil or rect == nil then
        return
    end
    local anim = res.sprites[sprite.anim]
    if anim == nil then
        console.e("No sprite for anim named " .. sprite.anim)
        return
    end
    local pic = anim.func(sprite.t)
    if pic == nil then
        console.e("No pic @ time=" .. sprite.t .. " for anim named " .. sprite.anim)
        return
    end

    local x, y = rect.x, rect.y
    local r = 0
    local offx, offy = 0, 0

    -- love.graphics.setColor(unpack(pic.color))
    love.graphics.setColor(1, 1, 1)
    love.graphics.draw(pic.image, pic.quad, x, y, r, pic.sx, pic.sy, offx, offy)
end

return drawEntity
