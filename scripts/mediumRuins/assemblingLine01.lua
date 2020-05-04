local ruin = {name="Assembling Line"}
local direct = defines.direction

ruin.entities = {
    {name = "assembling-machine-1", position = {-3.0, -2.0}},
    {name = "assembling-machine-1", position = {1.0, -2.0}},
    {name = "assembling-machine-1", position = {5.0, -2.0}},
    {name = "assembling-machine-1", position = {5.0, 2.0}},
    {name = "inserter", position = {-3.0, 0.0}, direction = direct.south},
    {name = "inserter", position = {-1.0, -2.0}, direction = direct.west},
    {name = "inserter", position = {3.0, -2.0}, direction = direct.west},
    {name = "inserter", position = {3.0, 2.0}, direction = direct.east},
    {name = "inserter", position = {5.0, 0.0}, direction = direct.north},
    {name = "iron-chest", position = {2.0, 2.0}},
    {name = "small-electric-pole", position = {-1.0, -1.0}},
    {name = "small-electric-pole", position = {3.0, 0.0}},
    {name = "transport-belt", position = {-6.0, 1.0}, direction = direct.east},
    {name = "transport-belt", position = {-5.0, 1.0}, direction = direct.east},
    {name = "transport-belt", position = {-4.0, 1.0}, direction = direct.east},
    {name = "transport-belt", position = {-3.0, 1.0}, direction = direct.east},
}

return ruin
