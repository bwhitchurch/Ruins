local ruin = {name = "Small Destroyed Setup 01"}
local direct = defines.direction

ruin.entities = {
    {name = "assembling-machine-1", position = {0.5, 2.5}},
    {name = "inserter", position = {0.5, -1.5}, direction = direct.north},
    {name = "inserter", position = {2.5, 1.5}, direction = direct.north},
    {name = "transport-belt", position = {-1.5, -1}, direction = direct.north},
    {name = "transport-belt", position = {-1.5, 0.0}, direction = direct.north},
    {name = "transport-belt", position = {-1.5, 1}, direction = direct.north}
}

return ruin
