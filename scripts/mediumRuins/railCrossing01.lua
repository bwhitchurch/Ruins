local ruin = {name = "Rail Crossing"}
local direct = defines.direction

ruin.entities = {
    {name = "gate", position = {-1.5, -0.5}, direction = direct.north},
    {name = "gate", position = {-1.5, 0.5}, direction = direct.north},
    {name = "gate", position = {1.5, -0.5}, direction = direct.north},
    {name = "gate", position = {1.5, 0.5}, direction = direct.north},
    {name = "stone-wall", position = {-1.5, -6.5}},
    {name = "stone-wall", position = {-1.5, -5.5}},
    {name = "stone-wall", position = {-1.5, -4.5}},
    {name = "stone-wall", position = {-1.5, -2.5}},
    {name = "stone-wall", position = {-1.5, -1.5}},
    {name = "stone-wall", position = {-1.5, 1.5}},
    {name = "stone-wall", position = {-1.5, 2.5}},
    {name = "stone-wall", position = {-1.5, 5.5}},
    {name = "stone-wall", position = {-1.5, 6.5}},
    {name = "stone-wall", position = {1.5, -6.5}},
    {name = "stone-wall", position = {1.5, -4.5}},
    {name = "stone-wall", position = {1.5, -3.5}},
    {name = "stone-wall", position = {1.5, -2.5}},
    {name = "stone-wall", position = {1.5, -1.5}},
    {name = "stone-wall", position = {1.5, 1.5}},
    {name = "stone-wall", position = {1.5, 2.5}},
    {name = "stone-wall", position = {1.5, 4.5}},
    {name = "stone-wall", position = {1.5, 5.5}},
    {name = "stone-wall", position = {1.5, 6.5}},
    {name = "straight-rail", position = {-6.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {-4.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {-2.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {0.0, -6.0}, direction = direct.north},
    {name = "straight-rail", position = {0.0, -2.0}, direction = direct.north},
    {name = "straight-rail", position = {0.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {0.0, 0.0}, direction = direct.north},
    {name = "straight-rail", position = {0.0, 2.0}, direction = direct.north},
    {name = "straight-rail", position = {0.0, 4.0}, direction = direct.north},
    {name = "straight-rail", position = {2.0, 0.0}, direction = direct.east},
    {name = "straight-rail", position = {6.0, 0.0}, direction = direct.east}
}

return ruin
