local clearArea = require("clearArea").clearArea
local radius = 16
local l_ruins = {}

table.insert(l_ruins, require("largeRuins.destroyedEnemyFort"))
table.insert(l_ruins, require("largeRuins.destroyedFort"))
table.insert(l_ruins, require("largeRuins.earlyGame"))
table.insert(l_ruins, require("largeRuins.mainBus"))
table.insert(l_ruins, require("largeRuins.orchard"))
table.insert(l_ruins, require("largeRuins.walledOrchard"))
table.insert(l_ruins, require("largeRuins.walledGrotto"))

local function spawnLargeRuins(center, surface)
	if clearArea(center, surface, radius) then
		l_ruins[math.random(#l_ruins)](center, surface) --call a random function
	end
end

return { spawn = spawnLargeRuins }
