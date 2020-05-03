local clearArea = require("clearArea").clearArea
local radius = 4
local s_ruins = {}

table.insert(s_ruins, require("smallRuins.crossOfPipes01"))
table.insert(s_ruins, require("smallRuins.crossOfPipes02"))
table.insert(s_ruins, require("smallRuins.crossOfPipes03"))
table.insert(s_ruins, require("smallRuins.crossOfPipes04"))
table.insert(s_ruins, require("smallRuins.diagonalWall01"))
table.insert(s_ruins, require("smallRuins.diagonalWall02"))
table.insert(s_ruins, require("smallRuins.diagonalWall03"))
table.insert(s_ruins, require("smallRuins.diagonalWall04"))
table.insert(s_ruins, require("smallRuins.gateWall01"))
table.insert(s_ruins, require("smallRuins.gateWall02"))
table.insert(s_ruins, require("smallRuins.gateWall03"))
table.insert(s_ruins, require("smallRuins.gateWall04"))
table.insert(s_ruins, require("smallRuins.gateWall05"))
table.insert(s_ruins, require("smallRuins.gateWall06"))
table.insert(s_ruins, require("smallRuins.gears01"))
table.insert(s_ruins, require("smallRuins.gears02"))
table.insert(s_ruins, require("smallRuins.harmlessTurret01"))
table.insert(s_ruins, require("smallRuins.harmlessTurret02"))
table.insert(s_ruins, require("smallRuins.harmlessTurret03"))
table.insert(s_ruins, require("smallRuins.landMineBunker01"))
table.insert(s_ruins, require("smallRuins.landMineBunker02"))
table.insert(s_ruins, require("smallRuins.landMineBunker03"))
table.insert(s_ruins, require("smallRuins.miningSetup01"))
table.insert(s_ruins, require("smallRuins.miningSetup02"))
table.insert(s_ruins, require("smallRuins.miningSetup03"))
table.insert(s_ruins, require("smallRuins.miningSetup04"))
table.insert(s_ruins, require("smallRuins.railSection01"))
table.insert(s_ruins, require("smallRuins.railSection02"))
table.insert(s_ruins, require("smallRuins.railSection03"))
table.insert(s_ruins, require("smallRuins.railSection04"))
table.insert(s_ruins, require("smallRuins.railSection05"))
table.insert(s_ruins, require("smallRuins.randomWalls01"))
table.insert(s_ruins, require("smallRuins.randomWalls02"))
table.insert(s_ruins, require("smallRuins.randomWalls03"))
table.insert(s_ruins, require("smallRuins.randomWalls04"))
table.insert(s_ruins, require("smallRuins.randomWalls05"))
table.insert(s_ruins, require("smallRuins.researchStation01"))
table.insert(s_ruins, require("smallRuins.researchStation02"))
table.insert(s_ruins, require("smallRuins.researchStation03"))
table.insert(s_ruins, require("smallRuins.researchStation04"))
table.insert(s_ruins, require("smallRuins.researchStation05"))
table.insert(s_ruins, require("smallRuins.researchStation06"))
table.insert(s_ruins, require("smallRuins.researchStation07"))
table.insert(s_ruins, require("smallRuins.researchStation08"))
table.insert(s_ruins, require("smallRuins.researchStation09"))
table.insert(s_ruins, require("smallRuins.researchStation10"))
table.insert(s_ruins, require("smallRuins.rockStash01"))
table.insert(s_ruins, require("smallRuins.rockStash02"))
table.insert(s_ruins, require("smallRuins.rockStash03"))
table.insert(s_ruins, require("smallRuins.rockStash04"))
table.insert(s_ruins, require("smallRuins.rockStash05"))
table.insert(s_ruins, require("smallRuins.rockStash06"))
table.insert(s_ruins, require("smallRuins.rockStash07"))
table.insert(s_ruins, require("smallRuins.rockStash08"))
table.insert(s_ruins, require("smallRuins.rockStash09"))
table.insert(s_ruins, require("smallRuins.rockStash10"))
table.insert(s_ruins, require("smallRuins.smallDestroyedSetup01"))
table.insert(s_ruins, require("smallRuins.smallDestroyedSetup02"))
table.insert(s_ruins, require("smallRuins.smallDestroyedSetup03"))
table.insert(s_ruins, require("smallRuins.smallDestroyedSetup04"))
table.insert(s_ruins, require("smallRuins.smallDualSplitter01"))
table.insert(s_ruins, require("smallRuins.smallDualSplitter02"))
table.insert(s_ruins, require("smallRuins.smallDualSplitter03"))
table.insert(s_ruins, require("smallRuins.smallMining01"))
table.insert(s_ruins, require("smallRuins.smallMining02"))
table.insert(s_ruins, require("smallRuins.smallMining03"))
table.insert(s_ruins, require("smallRuins.smallMining04"))
table.insert(s_ruins, require("smallRuins.smallMining05"))
table.insert(s_ruins, require("smallRuins.smallMining06"))
table.insert(s_ruins, require("smallRuins.smallMountain01"))
table.insert(s_ruins, require("smallRuins.smallMountain02"))
table.insert(s_ruins, require("smallRuins.smallMountain03"))
table.insert(s_ruins, require("smallRuins.smallMountain04"))
table.insert(s_ruins, require("smallRuins.smallSmelting01"))
table.insert(s_ruins, require("smallRuins.smallSmelting02"))
table.insert(s_ruins, require("smallRuins.smallSmelting03"))
table.insert(s_ruins, require("smallRuins.smallSmelting04"))
table.insert(s_ruins, require("smallRuins.smeltery01"))
table.insert(s_ruins, require("smallRuins.smeltery02"))
table.insert(s_ruins, require("smallRuins.smeltery03"))
table.insert(s_ruins, require("smallRuins.smeltery04"))
table.insert(s_ruins, require("smallRuins.splitterI01"))
table.insert(s_ruins, require("smallRuins.splitterI02"))
table.insert(s_ruins, require("smallRuins.splitterI03"))
table.insert(s_ruins, require("smallRuins.victoryPoles01"))
table.insert(s_ruins, require("smallRuins.victoryPoles02"))
table.insert(s_ruins, require("smallRuins.victoryPoles03"))
table.insert(s_ruins, require("smallRuins.victoryPoles04"))
table.insert(s_ruins, require("smallRuins.victoryPoles05"))
table.insert(s_ruins, require("smallRuins.victoryPoles06"))
table.insert(s_ruins, require("smallRuins.victoryPoles07"))
table.insert(s_ruins, require("smallRuins.victoryPoles08"))
table.insert(s_ruins, require("smallRuins.victoryPoles09"))

local function spawnSmallRuins(center, surface)
	if clearArea(center, surface, radius) then
		s_ruins[math.random(#s_ruins)](center, surface) --call a random function
	end
end

return { spawn = spawnSmallRuins }
