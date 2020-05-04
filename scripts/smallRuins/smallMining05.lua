local ruin = {name = "Small Mining 05"}
local direct = defines.direction

ruin.entities = {
    {name = "electric-mining-drill", position = {-2.0, -1.0}, direction = direct.south},
    {name = "electric-mining-drill", position = {1.0, 3.0}, direction = direct.north},
    {name = "fast-transport-belt", position = {-3.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-2.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {1.0, 1.0}, direction = direct.west}
}

return ruin
