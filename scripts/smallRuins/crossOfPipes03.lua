local ruin = {name = "Cross of Pipes 03"}
local direct = defines.direction

ruin.entities = {
    {name = "pipe", position = {-3.0, 0.0}},
    {name = "pipe", position = {-1.0, 0.0}},
    {name = "pipe", position = {0.0, 0.0}},
    {name = "pipe", position = {1.0, 0.0}},
    {name = "pipe", position = {2.0, 0.0}},
    {name = "pipe-to-ground", position = {-4.0, 0.0}, direction = direct.east},
    {name = "pipe-to-ground", position = {4.0, 0.0}, direction = direct.west}
}

return ruins
