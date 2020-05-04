local ruin = {name = "Smeltery 02"}
local direct = defines.direction

ruin.entities = {
    {name = "inserter", position = {-3.0, -2.0}, direction = direct.north},
    {name = "inserter", position = {-1.0, -1.0}, direction = direct.north},
    {name = "inserter", position = {-1.0, 3.0}, direction = direct.south},
    {name = "inserter", position = {2.0, -1.0}, direction = direct.north},
    {name = "inserter", position = {2.0, 3.0}, direction = direct.south},
    {name = "small-electric-pole", position = {-3.0, 4.0}},
    {name = "small-electric-pole", position = {3.0, 4.0}},
    {name = "steel-furnace", position = {-1.5, 4.5}},
    {name = "steel-furnace", position = {1.5, 4.5}},
    {name = "transport-belt", position = {-3.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {-2.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {-1.0, 0.0}, direction = direct.south},
    {name = "transport-belt", position = {-1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {-1.0, 2.0}, direction = direct.north},
    {name = "transport-belt", position = {0.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {1.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 0.0}, direction = direct.south},
    {name = "transport-belt", position = {2.0, 1.0}, direction = direct.west},
    {name = "transport-belt", position = {2.0, 2.0}, direction = direct.north},
    {name = "transport-belt", position = {3.0, 1.0}, direction = direct.west},
    {name = "wooden-chest", position = {-3.0, -3.0}},
}

return ruin
