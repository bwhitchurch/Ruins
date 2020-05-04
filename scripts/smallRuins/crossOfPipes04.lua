local ruin = {name = "Cross of Pipes 04"}
local direct = defines.direction

ruin.entities = {
    {name = "pipe", position = {0.0, -6.0}},
    {name = "pipe", position = {0.0, -5.0}},
    {name = "pipe", position = {0.0, -2.0}},
    {name = "pipe", position = {0.0, -1.0}},
    {name = "pipe", position = {0.0, 0.0}},
    {name = "pipe", position = {0.0, 1.0}},
    {name = "pipe", position = {0.0, 3.0}},
    {name = "pipe", position = {0.0, 4.0}},
    {name = "pipe", position = {0.0, 6.0}},
    {name = "pipe-to-ground", position = {0.0, 7.0}, direction = direct.north}
}

return ruin
