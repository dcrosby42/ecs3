local Entity = require "entity"
local dump = require "datadumper"
e = Entity:new()
e:newComp({type = "map", resource = "map1"})
print(e:tostring())
