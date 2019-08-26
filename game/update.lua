local function updateEntity(e, input, res)
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

return updateEntity
