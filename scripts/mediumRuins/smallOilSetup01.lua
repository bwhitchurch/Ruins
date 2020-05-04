local ruin = {name = "Small Oil Setup"}
local direct = defines.direction

ruin.entities = {
    {name = "pipe", position = {0.0, -1.0}, direction = direct.north},
    {name = "pipe", position = {1.0, -1.0}, direction = direct.north},
    {name = "pipe", position = {2.0, -1.0}, direction = direct.north},
    {name = "pipe-to-ground", position = {1.0, 0.0}, direction = direct.north},
    {name = "pipe-to-ground", position = {1.0, 4.0}, direction = direct.south},
    {name = "stone-wall", position = {-5.0, -5.0}},
    {name = "stone-wall", position = {-5.0, -4.0}},
    {name = "stone-wall", position = {-5.0, -3.0}},
    {name = "stone-wall", position = {-5.0, -2.0}},
    {name = "stone-wall", position = {-5.0, -1.0}},
    {name = "stone-wall", position = {-5.0, 0.0}},
    {name = "stone-wall", position = {-5.0, 1.0}},
    {name = "stone-wall", position = {-5.0, 2.0}},
    {name = "stone-wall", position = {-5.0, 3.0}},
    {name = "stone-wall", position = {-4.0, -5.0}},
    {name = "stone-wall", position = {-4.0, 3.0}},
    {name = "stone-wall", position = {-1.0, -5.0}},
    {name = "stone-wall", position = {0.0, -5.0}},
    {name = "stone-wall", position = {0.0, 3.0}},
    {name = "stone-wall", position = {1.0, -5.0}},
    {name = "stone-wall", position = {1.0, 3.0}},
    {name = "stone-wall", position = {2.0, -5.0}},
    {name = "stone-wall", position = {2.0, 3.0}},
    {name = "stone-wall", position = {3.0, -5.0}},
    {name = "stone-wall", position = {3.0, -4.0}},
    {name = "stone-wall", position = {3.0, -3.0}},
    {name = "stone-wall", position = {3.0, 3.0}},
    {name = "stone-wall", position = {4.0, -5.0}},
    {name = "stone-wall", position = {4.0, -4.0}},
    {name = "stone-wall", position = {4.0, -3.0}},
    {name = "stone-wall", position = {4.0, 0.0}},
    {name = "stone-wall", position = {4.0, 1.0}},
    {name = "stone-wall", position = {4.0, 2.0}},
    {name = "stone-wall", position = {4.0, 3.0}},
    {name = "storage-tank", position = {-2.0, -2.0}, direction = direct.north},
    {name = "storage-tank", position = {1.0, -3.0}, direction = direct.north}
}

return ruin
