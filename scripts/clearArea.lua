--checks for spawning validity and if valid, clears space for the spawn
local function clearArea(center, surface, radius)
	if surface.count_tiles_filtered{
		area = {
			{ center.x - radius, center.y - radius },
			{ center.x + radius, center.y + radius }
		},
		limit = 1,
		collision_mask = "item-layer"
	} == 1 then
		return false
	end

	for entity in
		surface.find_entities(
			{
				{ center.x - radius, center.y - radius },
				{ center.x + radius, center.y + radius }
			}
		)
	do
		if entity.valid and entity.type ~= "resource" and entity.type ~= "tree" then --don't destroy ores or trees
			entity.destroy({ do_cliff_correction = true })
		end
	end

	return true
end

return { clearArea = clearArea }
