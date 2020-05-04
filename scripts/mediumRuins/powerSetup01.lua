local ruin = {name = "Power Setup"}
local direct = defines.direction

ruin.entities = {
    {name = "boiler", position = {-4.0, 3.5}, direction = direct.north},
    {name = "boiler", position = {-1.0, 3.5}, direction = direct.north},
    {name = "boiler", position = {2.0, 3.5}, direction = direct.north},
    {name = "burner-inserter", position = {-4.0, 5.0}, direction = direct.south},
    {name = "burner-inserter", position = {-1.0, 5.0}, direction = direct.south},
    {name = "burner-inserter", position = {2.0, 5.0}, direction = direct.south},
    {name = "medium-electric-pole", position = {-1.0, -3.0}},
    {name = "medium-electric-pole", position = {3.0, -6.0}},
    {name = "steam-engine", position = {-4.0, 0.0}, direction = direct.north},
    {name = "steam-engine", position = {-1.0, 0.0}, direction = direct.north},
    {name = "steam-engine", position = {2.0, 0.0}, direction = direct.north},
    {name = "transport-belt", position = {-5.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {-4.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {-3.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {-2.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {-1.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {0.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {1.0, 6.0}, direction = direct.east},
    {name = "transport-belt", position = {2.0, 6.0}, direction = direct.east}
}

return ruin
