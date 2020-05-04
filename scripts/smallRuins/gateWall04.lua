local ruin = {name = "Gate Wall 04"}
local direct = defines.direction

ruin.entities = {
    {name = "gate", position = {-0.5, 0.5}, direction = direct.west},
    {name = "gate", position = {0.5, 0.5}, direction = direct.west},
    {name = "gate", position = {1.5, 0.5}, direction = direct.west},
    {name = "stone-wall", position = {-2.5, 0.5}},
    {name = "stone-wall", position = {-1.5, 0.5}},
    {name = "stone-wall", position = {2.5, 0.5}},
    {name = "stone-wall", position = {3.5, 0.5}}
}

return ruin
