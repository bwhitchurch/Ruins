local clearArea = require("clearArea01").clearArea
local radius = 8
local m_ruins = {}

table.insert(m_ruins, require("mediumRuins.assemblingLine01"))
--table.insert(m_ruins, require("mediumRuins.biterDefense01"))
table.insert(m_ruins, require("mediumRuins.encampment01"))
table.insert(m_ruins, require("mediumRuins.mountainRange01"))
table.insert(m_ruins, require("mediumRuins.pipeChain01"))
table.insert(m_ruins, require("mediumRuins.powerSetup01"))
--table.insert(m_ruins, require("mediumRuins.queenNest01"))
table.insert(m_ruins, require("mediumRuins.roughPerimeter02"))
table.insert(m_ruins, require("mediumRuins.roughPerimeter01"))
table.insert(m_ruins, require("mediumRuins.smallOilSetup01"))
table.insert(m_ruins, require("mediumRuins.overgrownFort01"))
table.insert(m_ruins, require("mediumRuins.radarOutpost01"))
--table.insert(m_ruins, require("mediumRuins.railCrossing01"))
table.insert(m_ruins, require("mediumRuins.treeFortTrapped01"))
table.insert(m_ruins, require("mediumRuins.treeIsland01"))
table.insert(m_ruins, require("mediumRuins.treeRing01"))
table.insert(m_ruins, require("mediumRuins.roughFort01"))
table.insert(m_ruins, require("mediumRuins.storageArea01"))
--table.insert(m_ruins, require("mediumRuins.helipad01"))
table.insert(m_ruins, require("mediumRuins.militaryField01"))

local function spawnMediumRuins(center, surface)
	if clearArea(center, surface, radius) then
		m_ruins[math.random(#m_ruins)](center, surface) --call a random function
	end
end

return { spawn = spawnMediumRuins }
