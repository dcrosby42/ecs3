local json = require "json"

local Entity = {}
Entity.__index = Entity

local _nextEid = 1

function Entity:new(opts)
    local entity = setmetatable({}, Entity)
    opts = opts or {}
    entity.eid = _nextEid
    _nextEid = _nextEid + 1
    entity.parent = opts.parent
    entity.comps = {}
    entity.children = {}
    return entity
end

function Entity:newComp(c)
    table.insert(self.comps, c)
end

function Entity:getComp(ctype)
    for i = 1, #self.comps do
        if self.comps[i].type == ctype then
            return self.comps[i]
        end
    end
end

function Entity:withComp(ctype, fn)
    local comp = self:getComp(ctype)
    if comp then
        fn(comp)
    end
end

function Entity:tostring()
    local s = "Entity-" .. self.eid
    if #self.comps > 0 then
        s = s .. "\n"
    end
    for i = 1, #self.comps do
        s = s .. "  " .. json.encode(self.comps[i]) .. "\n"
    end
    return s
end

function Entity:totable(childDepth)
    if childDepth == nil then
        childDepth = 0
    end
    local t = {}
    t.eid = self.eid
    t.comps = self.comps
    if childDepth > 0 then
        t.children = {}
        for i = 1, #self.children do
            table.insert(t.children, self.children[i]:totable(childDepth - 1))
        end
    end
    return t
end

function Entity:tojson(childDepth)
    return json.encode(self:totable(childDepth))
end

-- Returns true if this Entity is the root
function Entity:isRoot()
    return not self.parent
end

-- Recurse upward looking for the root
function Entity:getRoot()
    if self:isRoot() then
        return self
    else
        return self.parent:getRoot()
    end
end

return Entity
