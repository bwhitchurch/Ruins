local ruin = {name = "Smeltery 03"}
local direct = defines.direction

ruin.entities = {
    {name = "fast-inserter", position = {-3.0, -2.0}, direction = direct.north},
    {name = "fast-inserter", position = {-1.0, -1.0}, direction = direct.north},
    {name = "fast-inserter", position = {-1.0, 3.0}, direction = direct.south},
    {name = "fast-inserter", position = {2.0, -1.0}, direction = direct.north},
    {name = "fast-inserter", position = {2.0, 3.0}, direction = direct.south},
    {name = "fast-transport-belt", position = {-3.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-2.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-1.0, 0.0}, direction = direct.south},
    {name = "fast-transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {-1.0, 2.0}, direction = direct.north},
    {name = "fast-transport-belt", position = {0.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {1.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {2.0, 0.0}, direction = direct.south},
    {name = "fast-transport-belt", position = {2.0, 1.0}, direction = direct.west},
    {name = "fast-transport-belt", position = {2.0, 2.0}, direction = direct.north},
    {name = "fast-transport-belt", position = {3.0, 1.0}, direction = direct.west},
    {name = "small-electric-pole", position = {3.0, -2.0}},
    {name = "small-electric-pole", position = {3.0, 4.0}},
    {name = "small-lamp", position = {-3.0, 0.0}},
    {name = "stone-furnace", position = {-1.5, -2.5}},
    {name = "stone-furnace", position = {1.5, 4.5}},
}

return ruin
