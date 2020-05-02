local smallRuins = require("scripts/smallRuins")
local mediumRuins = require("scripts/mediumRuins")
local largeRuins = require("scripts/largeRuins")

local DEBUG = false --used for debug, users should not enable
--function that will return true 'percent' of the time.
local function probability(percent)
	return math.random() <= percent
end

local function randomizeCenter(center, variance)
	return {
		x = center.x + math.random(-variance, variance),
		y = center.y + math.random(-variance, variance)
	}
end

script.on_event(defines.events.on_chunk_generated, function(e)
	local center = {
		x = (e.area.left_top.x + e.area.right_bottom.x) / 2,
		y = (e.area.left_top.y + e.area.right_bottom.y) / 2
	}
	if math.abs(
		center.x
	) < settings.global["ruins-min-distance-from-spawn"].value and math.abs(
		center.y
	) < settings.global["ruins-min-distance-from-spawn"].value then return end --too close to spawn
	if probability(settings.global["ruins-small-ruin-chance"].value) then
		if DEBUG then
			game.print(
				"A small ruin was spawned at " .. center.x .. "," .. center.y
			)
		end
		center = randomizeCenter(center, 10)
		smallRuins.spawn(center, e.surface)
	elseif probability(settings.global["ruins-medium-ruin-chance"].value) then
		--spawn medium ruin
		if DEBUG then
			game.print(
				"A medium ruin was spawned at " .. center.x .. "," .. center.y
			)
		end

		center = randomizeCenter(center, 5)
		mediumRuins.spawn(center, e.surface)
	elseif probability(settings.global["ruins-large-ruin-chance"].value) then
		--spawn large ruin
		if DEBUG then
			game.print(
				"A large ruin was spawned at " .. center.x .. "," .. center.y
			)
		end
		largeRuins.spawn(center, e.surface)
	end
end)
