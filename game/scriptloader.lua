local S = {}

local function mkMapFlip()
    local maplist = {"southgarden", "island", "cliffcave"}
    return {
        fn = function(script, e, input, res)
            if not script.t then
                script.t = 0
            end
            if not script.n then
                script.n = 1
            end
            script.t = script.t + input.dt
            if script.t > 1 then
                script.t = 0
                script.n = script.n + 1
                local mapname = maplist[1 + (script.n) % #maplist]
                -- local mapname = maplist[script.n]
                -- print("map " .. mapname)
                e:getComp("map").resource = mapname
            end
        end
    }
end

function S.loadAll()
    local s = {}
    s.mapflip = mkMapFlip()
    return s
end

return S
