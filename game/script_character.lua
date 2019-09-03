local dirLetters = {
    up = "u",
    down = "d",
    left = "l",
    right = "r"
}

local Speed = 48

return {
    fn = function(script, e, input, res)
        local con = e:getComp("controller")
        local sprite = e:getComp("sprite")

        action = "idle"
        if con.down or con.up or con.left or con.right then
            action = "walk"
        end

        local dir = con.lastDir
        if dir and dir ~= "" and action then
            sprite.anim = "character/" .. action .. "/" .. dirLetters[dir]
        end

        local rect = e:getComp("rect")
        if rect then
            local dx, dy = 0, 0
            local sp = Speed * input.dt
            if con.down then
                dy = sp
            end
            if con.up then
                dy = -sp
            end
            if con.left then
                dx = -sp
            end
            if con.right then
                dx = sp
            end
            rect.x = rect.x + dx
            rect.y = rect.y + dy
        end
    end
}
