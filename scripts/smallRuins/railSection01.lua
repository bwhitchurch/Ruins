local ruin = {name = "Rail Section 01"}
local direct = defines.direction

ruin.entities = {
    {name = "straight-rail", position = {-4.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {-2.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {0.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {2.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {4.0, 0.0}, direction = direct.east},
}

return ruin
