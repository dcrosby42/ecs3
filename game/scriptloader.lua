local S = {}

function S.loadAll()
    local s = {}
    s.character = require("game.script_character")
    return s
end

return S
