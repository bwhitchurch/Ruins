--checks for spawning validity and if valid, clears space for the spawn
local function clearArea(center, surface, radius)
	if surface.count_tiles_filtered{
		position = center,
		radius = radius,
		limit = 1,
		collision_mask = "item-layer"
	} == 1 then
		return false
	end

	for _, entity in
		ipairs(
			surface.find_entities_filtered{
				position = center,
				radius = radius,
				type = { "resource", "tree" },
				invert = true
			}
		)
	do
		if entity.valid then
			entity.destroy({ do_cliff_correction = true })
		end
	end

	return true
end

return { clearArea = clearArea }
