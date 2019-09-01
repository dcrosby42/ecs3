local function updateEntity(e, input, res)
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
        "script",
        function(scriptComp)
            local scriptRes = res.scripts[scriptComp.name]
            if scriptRes then
                scriptRes.fn(scriptComp, e, input, res)
            end
            -- camera.tx = camera.tx + 1
        end
    )
end

return updateEntity
