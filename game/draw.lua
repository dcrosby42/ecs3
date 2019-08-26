local function drawEntity(e, res)
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

return drawEntity
