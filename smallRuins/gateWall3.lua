return function(center, surface) --section of wall with gate
    local ce = function(params)
        params.raise_built = true
        return surface.create_entity(params)
    end
    local fN = game.forces.neutral
    local direct = defines.direction
    local e = ce{name = "stone-wall", position = {center.x + 0.5, center.y-3.5}, force = fN}
    if e then
      e.damage(68,"neutral","physical")
    end
    local e = ce{name = "stone-wall", position = {center.x + 0.5, center.y-2.5}, force = fN}
    if e then
      e.damage(82,"neutral","physical")
    end
    ce{name = "stone-wall", position = {center.x + 0.5, center.y-1.5}, force = fN}

    ce{name = "gate", position = {center.x + 0.5, center.y-0.5}, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 0.5}, force = fN}
    ce{name = "gate", position = {center.x + 0.5, center.y + 1.5}, force = fN}

    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 2.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 3.5}, force = fN}
    ce{name = "stone-wall", position = {center.x + 0.5, center.y + 5.5}, force = fN}
end