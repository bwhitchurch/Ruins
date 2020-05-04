local ruin = {name = "Small Mining 03"}
local direct = defines.direction

ruin.entities = {
    {name = "burner-mining-drill", position = {-1.5, -0.5}, direction = direct.south},
    {name = "burner-mining-drill", position = {0.5, -0.5}, direction = direct.south},
    {name = "transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, 1.0}, direction = direct.west},
}

return ruin
