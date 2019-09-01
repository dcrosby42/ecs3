local json = require "json"
local gameconsole = {}

function dig(t, ks)
    if ks and #ks > 0 then
        local v = t
        local v2
        for i = 1, #ks do
            v2 = v[ks[i]]
            print("dug " .. ks[i] .. " " .. tostring(v2))
            if i ~= #ks and (type(v2) ~= "table") then
                return nil
            end
            v = v2
        end
        return v
    end
    return t
end

function gameconsole.defineEntityCommand(console, game)
    console.defineCommand( -- How to create a custom command
        "e",
        "Examine a value in the game object",
        function(...)
            local cmd = {}
            for i = 1, select("#", ...) do
                cmd[i] = select(i, ...)
            end
            local eid = tonumber(cmd[1])
            local e = game.world.e:findEid(eid)
            if #cmd > 1 then
                e:withComp(
                    cmd[2],
                    function(c)
                        console.i(json.encode(c))
                    end
                )
            else
                if e then
                    console.i(json.encode(e))
                else
                    console.e("No entity " .. eid)
                end
            end
        end
    )
end

function gameconsole.defineGameInspectCommand(console, game)
    console.defineCommand( -- How to create a custom command
        "g",
        "Examine a value in the game object",
        function(...)
            local cmd = {}
            for i = 1, select("#", ...) do
                cmd[i] = select(i, ...)
            end
            local val = dig(game, cmd)
            console.i(json.encode(val))
        end
    )
end

function gameconsole.defineCommands(console, game)
    gameconsole.defineGameInspectCommand(console, game)
    gameconsole.defineEntityCommand(console, game)
end

function gameconsole.j(obj)
    require("console").d(json.encode(obj))
end
function gameconsole.i(s)
    require("console").i(s)
end
function gameconsole.d(s)
    require("console").d(s)
end
function gameconsole.e(s)
    require("console").e(s)
end
return gameconsole
