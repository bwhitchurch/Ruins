local ruin = {name = "Splitter I 01"}
local direct = defines.direction

ruin.entities = {
    {name = "splitter", position = {-0.5, -2.0}, direction = direct.south},
    {name = "splitter", position = {-0.5, 0.0}, direction = direct.south},
    {name = "splitter", position = {0.5, -1.0}, direction = direct.south},
    {name = "splitter", position = {0.5, 1.0}, direction = direct.south},
    {name = "splitter", position = {1.5, -2.0}, direction = direct.south},
    {name = "splitter", position = {1.5, 0.0}, direction = direct.south},
}

return ruin
