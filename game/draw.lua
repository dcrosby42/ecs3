local drawEntity
local drawEntities

local LabelFont = love.graphics.newFont(8)

function drawEntities(es, res)
    for i = 1, #es do
        drawEntity(es[i])
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
end

return drawEntity
