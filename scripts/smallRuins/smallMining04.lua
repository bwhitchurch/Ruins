local ruin = {name = "Small Mining 04 "}
local direct = defines.direction

ruin.entities = {
    {name = "burner-mining-drill", position = {1.0, 3.0}, direction = direct.north},
    {name = "transport-belt", position = {-3.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 1.0}, direction = direct.west}
}

return ruin
