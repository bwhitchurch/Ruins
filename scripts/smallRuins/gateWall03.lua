local ruin = {name = "Gate Wall 03"}
local direct = defines.direction

ruin.entities = {
    {name = "gate", position = {0.5, -0.5}, direction = direct.north},
    {name = "gate", position = {0.5, 0.5}, direction = direct.north},
    {name = "gate", position = {0.5, 1.5}, direction = direct.north},
    {name = "stone-wall", position = {0.5, -3.5}},
    {name = "stone-wall", position = {0.5, -2.5}},
    {name = "stone-wall", position = {0.5, -1.5}},
    {name = "stone-wall", position = {0.5, 2.5}},
    {name = "stone-wall", position = {0.5, 3.5}},
    {name = "stone-wall", position = {0.5, 5.5}}
}

return ruin
