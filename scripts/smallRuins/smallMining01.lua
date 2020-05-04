local ruin = {name = "Small Mining 01"}
local direct = defines.direction

ruin.entities = {
    {name = "electric-mining-drill", position = {-2.0, -1.0}, direction = direct.south},
    {name = "electric-mining-drill", position = {1.0, -1.0}, direction = direct.south},
    {name = "transport-belt", position = {-2.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {0.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 1.0}, direction = direct.west},
}

return ruin
