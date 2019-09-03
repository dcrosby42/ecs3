local ResourceLoader = require("resourceloader")
local S = {}

function S.loadAll()
    local sprites = {}
    local dir = "assets/sprites"
    local sprites = {"character"}

    local list
    for _, name in ipairs(sprites) do
        list = ResourceLoader.loadAsepriteAnims(dir, name)
        for _, anim in ipairs(list) do
            sprites[name .. "/" .. anim.name] = anim
        end
    end

    return sprites
end
return S
