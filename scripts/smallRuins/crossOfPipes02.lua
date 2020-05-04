local ruin = {name = "Cross of Pipes 02"}
local direct = defines.direction

ruin.entities = {
    {name = "pipe", position = {0.0, -1.0}},
    {name = "pipe", position = {0.0, 0.0}},
    {name = "pipe", position = {0.0, 1.0}},
    {name = "pipe-to-ground", position = {-1.0, 0.0}, direction = direct.east},
    {name = "pipe-to-ground", position = {0.0, -2.0}, direction = direct.south},
    {name = "pipe-to-ground", position = {0.0, 2.0}, direction = direct.north},
    {name = "pipe-to-ground", position = {1.0, 0.0}, direction = direct.west}
}

return ruin
