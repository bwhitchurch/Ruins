local ruin = {name = "Small Destroyed Setup 04"}
local direct = defines.direction

ruin.entities = {
    {name = "assembling-machine-2", position = {-2.5, -0.5}},
    {name = "inserter", position = {-1.5, -2.5}, direction = direct.north},
    {name = "inserter", position = {1.5, -0.5}, direction = direct.north},
    {name = "transport-belt", position = {-1, 1.5}, direction = direct.north},
    {name = "transport-belt", position = {0.0, 1.5}, direction = direct.north},
    {name = "transport-belt", position = {1, 1.5}, direction = direct.north}
}

return ruin
