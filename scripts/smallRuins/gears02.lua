local ruin = {name = "Gears 02"}
local direct = defines.direction

ruin.entities = {
    {name = "assembling-machine-2", position = {-1.0, -1.0}},
    {name = "assembling-machine-2", position = {2.0, -1.0}},
    {name = "fast-inserter", position = {-1.0, -3.0}, direction = direct.south},
    {name = "fast-inserter", position = {-1.0, 1.0}, direction = direct.south},
    {name = "fast-inserter", position = {-0.0, -3.0}, direction = direct.south},
    {name = "fast-inserter", position = {1.0, 1.0}, direction = direct.south},
    {name = "fast-inserter", position = {2.0, -3.0}, direction = direct.south},
    {name = "fast-inserter", position = {3.0, -3.0}, direction = direct.south},
    {name = "fast-transport-belt", position = {-3.0, 2.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {-3.0, 3.0}, direction = direct.south},
    {name = "fast-transport-belt", position = {-2.0, 3.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {-1.0, 2.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-1.0, 3.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {-0.0, 2.0}, direction = direct.north},
    {name = "fast-transport-belt", position = {-0.0, 3.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {1.0, 2.0}, direction = direct.east},
    {name = "medium-electric-pole", position = {-0.0, 1.0}},
    {name = "medium-electric-pole", position = {1.0, -3.0}}
}

return ruin
