local clearArea = require("clearArea01").clearArea
local radius = 16
local l_ruins = {}

table.insert(l_ruins, require("largeRuins.destroyedEnemyFort01"))
table.insert(l_ruins, require("largeRuins.destroyedFort01"))
table.insert(l_ruins, require("largeRuins.earlyGame01"))
table.insert(l_ruins, require("largeRuins.mainBus01"))
table.insert(l_ruins, require("largeRuins.orchard01"))
table.insert(l_ruins, require("largeRuins.walledOrchard01"))
table.insert(l_ruins, require("largeRuins.walledGrotto01"))

local function spawnLargeRuins(center, surface)
	if clearArea(center, surface, radius) then
		l_ruins[math.random(#l_ruins)](center, surface) --call a random function
	end
end

return { spawn = spawnLargeRuins }
