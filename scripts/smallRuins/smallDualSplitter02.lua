local ruin = {name = "Small Dual Splitter 02"}
local direct = defines.direction

ruin.entities = {
    {name = "splitter", position = {-1.0, 0.5}, direction = direct.west},
    {name = "splitter", position = {0.0, -0.5}, direction = direct.west},
    {name = "transport-belt", position = {-2.0, 0.0}, direction = direct.west},
    {name = "transport-belt", position = {-2.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, -1.0}, direction = direct.north},
    {name = "transport-belt", position = {1.0, 0.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 0.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {3.0, 0.0}, direction = direct.west}
}

return ruin
