local T = {}

local function ascending(a, b)
    if type(a) == type(b) then
        return a < b
    end
    return false
    -- if type(a) == "number" and type(b) ~= "number" then
    --     return true
    -- elseif type(a) ~= "number" and type(b) == "number" then
    --     return false
    -- end
    -- return true
end

function T.sortedKeys(t, sortFunc)
    if sortFunc == nil then
        sortFunc = ascending
    end
    local keys = {}
    for k, v in pairs(t) do
        keys[#keys + 1] = k
    end
    table.sort(keys, sortFunc)
    return keys
end

local function isEmpty(t)
    for k, v in pairs(t) do
        return false
    end
    return true
end

function T.tableAsPairs(t)
    local pairs = {}
    local keys = T.sortedKeys(t, ascending)
    for i, key in ipairs(keys) do
        pairs[i] = {key, t[key]}
    end
    return pairs
end

function T.toData(t, seen)
    if seen == nil then
        seen = {}
    end
    seen[t] = true
    local t2 = {}
    for k, v in pairs(t) do
        local y = type(v)
        if y == "boolean" or y == "number" or y == "string" then
            t2[k] = v
        elseif y == "table" then
            if seen[v] then
                t2[k] = "[REF: " .. tostring(v) .. "]"
            else
                t2[k] = T.toData(v, seen)
            end
        elseif y == "function" then
            t2[k] = tostring(v)
        end
    end
    return t2
end

function debugString(t, prefix)
    if not prefix then
        prefix = ""
    end
    local s = ""
    local ps = T.tableAsPairs(t)
    for i, pair in ipairs(ps) do
        s = s .. prefix .. pair[1] .. ": "
        if type(pair[2]) == "table" then
            if isEmpty(pair[2]) then
                s = s .. "{}\n"
            else
                local nprefix = ""
                if prefix == "" then
                    nprefix = "  "
                else
                    nprefix = prefix .. prefix
                end
                s = s .. "\n" .. debugString(pair[2], nprefix)
            end
        else
            s = s .. tostring(pair[2]) .. "\n"
        end
    end
    return s
end

function T.debugString(t, prefix)
    return debugString(T.toData(t), prefix)
end

return T
