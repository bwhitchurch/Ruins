local ruin = {name = "Pipe Chain"}
local direct = defines.direction

ruin.entities = {
    {name = "pipe-to-ground", position = {-7.0, 0.0}, direction = direct.west},
    {name = "pipe-to-ground", position = {-1.0, -7.0}, direction = direct.north},
    {name = "pipe-to-ground", position = {-1.0, -2.0}, direction = direct.south},
    {name = "pipe-to-ground", position = {-1.0, -1.0}, direction = direct.north},
    {name = "pipe-to-ground", position = {-1.0, 6.0}, direction = direct.south},
    {name = "pipe-to-ground", position = {3.0, 0.0}, direction = direct.east},
    {name = "pipe-to-ground", position = {4.0, 0.0}, direction = direct.west}
}

return ruin
