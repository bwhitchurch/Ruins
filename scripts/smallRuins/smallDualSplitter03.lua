local ruin = {name = "Small Dual Splitter 03"}
local direct = defines.direction

ruin.entities = {
    {name = "fast-splitter", position = {0.0, -0.5}, direction = direct.east},
    {name = "fast-transport-belt", position = {-2.0, 1.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {1.0, -1.0}, direction = direct.north},
    {name = "fast-transport-belt", position = {1.0, 0.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {1.0, 1.0}, direction = direct.east},
    {name = "fast-transport-belt", position = {2.0, 1.0}, direction = direct.east}
}

return ruin
