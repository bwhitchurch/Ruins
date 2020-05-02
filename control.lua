local smallRuins = require("scripts/smallRuins")
local mediumRuins = require("scripts/mediumRuins")
local largeRuins = require("scripts/largeRuins")

local DEBUG = false --used for debug, users should not enable
--function that will return true 'percent' of the time.
local function randomizeCenter(center, variance)
	return {
		x = center.x + math.random(-variance, variance),
		y = center.y + math.random(-variance, variance)
	}
end

local function ruinCanSpawn(center)
	local spawnRadius = settings.global["ruins-min-distance-from-spawn"].value
	local distance = math.max(math.abs(center.x), math.abs(center.y))
	return distance >= spawnRadius
end

local function spawnChances()
	local smallChance = settings.global["ruins-small-ruin-chance"].value
	local mediumChance = settings.global["ruins-medium-ruin-chance"].value
	local largeChance = settings.global["ruins-large-ruin-chance"].value
	local sumChance = smallChance + mediumChance + largeChance
	local totalChance = math.min(sumChance, 1)
	-- now compute cumulative distribution of conditional probabilities for
	-- spawnType given a spawn occurs.
	local smallThreshold = smallChance / sumChance * totalChance
	local mediumThreshold =
		mediumChance / sumChance * totalChance + smallThreshold
	local largeThreshold =
		largeChance / sumChance * totalChance + mediumThreshold

	if DEBUG then
		local debugString = "SumChance = " .. sumChance .. "\n"
		debugString = debugString .. "TotalChance = " .. totalChance
		debugString =
			debugString .. "\n" .. "Threshold for small ruin spawn = " .. smallThreshold .. "\n"
		debugString =
			debugString .. "Threshold for medium ruin spawn = " .. mediumThreshold .. "\n"
		debugString =
			debugString .. "Threshold for large ruin spawn = " .. largeThreshold .. "\n"
		game.print(debugString)
	end

	return {
		small = smallThreshold,
		medium = mediumThreshold,
		large = largeThreshold
	}
end

script.on_event(defines.events.on_chunk_generated, function(e)
	local center = {
		x = (e.area.left_top.x + e.area.right_bottom.x) / 2,
		y = (e.area.left_top.y + e.area.right_bottom.y) / 2
	}
	if not ruinCanSpawn(center) then return end --too close to spawn
	local spawnTable = spawnChances()
	local spawnType = math.random()
	if spawnType <= spawnTable.small then
		if DEBUG then
			game.print(
				"A small ruin was spawned at " .. center.x .. "," .. center.y
			)
		end
		center = randomizeCenter(center, 10)
		smallRuins.spawn(center, e.surface)
	elseif spawnType <= spawnTable.medium then
		--spawn medium ruin
		if DEBUG then
			game.print(
				"A medium ruin was spawned at " .. center.x .. "," .. center.y
			)
		end

		center = randomizeCenter(center, 5)
		mediumRuins.spawn(center, e.surface)
	elseif spawnType <= spawnTable.large then
		--spawn large ruin
		if DEBUG then
			game.print(
				"A large ruin was spawned at " .. center.x .. "," .. center.y
			)
		end
		largeRuins.spawn(center, e.surface)
	end
end)
