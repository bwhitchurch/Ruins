--[[
   This is a table of functions, that when called with an area and center position, will spawn different ruins.
   If you want to add more ruins, simply observe the format, and create it accordingly.
   Remember that the server must also share this config, exactly, to prevent desyncs.
   Format:

   function(center)
   --code to spawn entities relative to the center
   end,

--]]

--checks for spawning validity and if valid, clears space for the spawn
function l_clearArea(center)
   for y = center.y-16, center.y+16 do --fail if any water in area
      for x = center.x-16, center.x+16 do
         if game.surfaces[1].get_tile(x, y).name == "water" or game.surfaces[1].get_tile(x, y).name == "deepwater" then
            return false
         end
      end
   end

   for index, entity in pairs(game.surfaces[1].find_entities({{center.x-16,center.y-16},{center.x+16,center.y+16}})) do
      if not string.find(entity.name, "-ore") then --don't destroy ores
         entity.destroy()
      end
   end

   return true
end

local l_ruins = {
   function(center) --main buses
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-6.0),center.y+(-7.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-7.0),center.y+(-8.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-9.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-5.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-3.0),center.y+(-7.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(0.0),center.y+(-8.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-1.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(-8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(-9.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-7.0),center.y+(-6.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-5.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-7.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-1.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-6.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-5.0),center.y+(-2.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(0.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(5.0),center.y+(-2.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(-3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-7.0),center.y+(1.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-6.0),center.y+(2.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-5.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(1.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(2.0)}, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-1.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(0.0),center.y+(1.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(1.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-11.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-7.0),center.y+(3.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(3.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(0.0),center.y+(3.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(10.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(3.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "splitter", position = {center.x+(-5.0),center.y+(7.5)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(0.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(11.0),center.y+(8.0)}, direction = defines.direction.east, force = game.forces.neutral}
   end,
   function(center) --ce{name = stone-wall, position = {center.x+(-9.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-8.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(2.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(3.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(5.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(7.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(6.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(8.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(-4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(-4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(-2.0)}, force = game.forces.neutral}
      ce{name = "medium-electric-pole", position = {center.x+(-7.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "radar", position = {center.x+(-1.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "radar", position = {center.x+(2.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "radar", position = {center.x+(5.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(-2.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(0.0)}, force = game.forces.neutral}
      ce{name = "medium-electric-pole", position = {center.x+(2.0),center.y+(1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(0.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(3.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(2.0)}, force = game.forces.neutral}
      ce{name = "gun-turret", position = {center.x+(-7.5),center.y+(2.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "gun-turret", position = {center.x+(7.5),center.y+(2.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(3.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-8.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "gate", position = {center.x+(-1.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "gate", position = {center.x+(0.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "gate", position = {center.x+(2.0),center.y+(4.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(3.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(5.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(4.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(7.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(8.0),center.y+(4.0)}, force = game.forces.neutral}
   end,
   function(center) --orchard
      local randomTree = "tree-0" .. tostring(math.random(1,9))
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(-12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(-7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(-2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(2.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-12.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-10.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-8.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-6.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-4.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-2.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(-0.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(1.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(3.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(5.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(7.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(9.5),center.y+(12.5)}, force = game.forces.neutral}
      ce{name = randomTree, position = {center.x+(11.5),center.y+(12.5)}, force = game.forces.neutral}
   end,
   function(center) --early game setups
      ce{name = "lab", position = {center.x+(-7.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(-5.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-5.0),center.y+(-11.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(-3.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(1.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(3.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(3.0),center.y+(-11.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-1.0),center.y+(-9.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(4.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(3.0),center.y+(-9.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(5.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(6.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(-7.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(-5.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-5.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(-3.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(-1.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(1.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(5.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "small-electric-pole", position = {center.x+(3.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(3.0),center.y+(-7.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(3.0),center.y+(-5.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "radar", position = {center.x+(7.0),center.y+(0.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(2.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "stone-furnace", position = {center.x+(-1.5),center.y+(1.5)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(0.0),center.y+(2.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(4.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(3.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-3.0),center.y+(4.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "stone-furnace", position = {center.x+(-1.5),center.y+(3.5)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(0.0),center.y+(4.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(4.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(3.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(6.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-3.0),center.y+(6.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "stone-furnace", position = {center.x+(-1.5),center.y+(5.5)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(5.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(8.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(7.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-furnace", position = {center.x+(-1.5),center.y+(7.5)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(0.0),center.y+(8.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(8.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(7.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(10.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-3.0),center.y+(10.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "stone-furnace", position = {center.x+(-1.5),center.y+(9.5)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(9.0)}, direction = defines.direction.south, force = game.forces.neutral}

   end,
   function(center) --destroyed enemy fort
      ce{name = "stone-wall", position = {center.x+(-15.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-13.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-10.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-8.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-3.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(0.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(1.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(2.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(8.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(11.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(13.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(14.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-16.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-14.0)}, force = game.forces.neutral}
      ce{name = "gun-turret", position = {center.x+(-12.5),center.y+(-12.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "fast-inserter", position = {center.x+(-11.0),center.y+(-13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(1.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(0.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(3.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(2.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(-13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(10.0),center.y+(-13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "gun-turret", position = {center.x+(11.5),center.y+(-12.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-14.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-13.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-13.0),center.y+(-11.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "underground-belt", position = {center.x+(-11.0),center.y+(-12.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-9.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-4.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-12.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "medium-electric-pole", position = {center.x+(10.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(12.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-11.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-12.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-9.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-10.0)}, force = game.forces.neutral}
      ce{name = "assembling-machine-2", position = {center.x+(-8.0),center.y+(-9.0)}, force = game.forces.neutral}
      ce{name = "assembling-machine-2", position = {center.x+(-4.0),center.y+(-9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-10.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-9.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-7.0),center.y+(-7.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-8.0),center.y+(-7.0)}, force = game.forces.neutral}
      ce{name = "medium-electric-pole", position = {center.x+(-6.0),center.y+(-7.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-5.0),center.y+(-7.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-4.0),center.y+(-7.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-8.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-7.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-8.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "assembling-machine-2", position = {center.x+(-9.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "assembling-machine-2", position = {center.x+(-6.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "assembling-machine-2", position = {center.x+(-3.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-6.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-5.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-6.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-4.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-8.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-7.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "medium-electric-pole", position = {center.x+(-6.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-5.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-4.0),center.y+(-3.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-3.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(-2.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(-2.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-9.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-10.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(-2.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(-2.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-2.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(-1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(1.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(0.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(1.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(1.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(0.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(3.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(2.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(3.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(2.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(2.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(2.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(3.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(5.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(4.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(5.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(5.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(4.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(7.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(7.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(2.0),center.y+(7.0)}, force = game.forces.neutral}
      ce{name = "lab", position = {center.x+(5.0),center.y+(7.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(7.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(8.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(8.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(8.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(9.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-13.0),center.y+(10.0)}, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(-12.0),center.y+(11.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-12.0),center.y+(10.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(12.0),center.y+(11.0)}, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(12.0),center.y+(10.0)}, direction = defines.direction.south, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(11.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(13.0)}, force = game.forces.neutral}
      ce{name = "gun-turret", position = {center.x+(-11.5),center.y+(12.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "transport-belt", position = {center.x+(-7.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-8.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-5.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-6.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-3.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-4.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-1.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(-2.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(0.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(4.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(5.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(7.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(6.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(9.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "transport-belt", position = {center.x+(8.0),center.y+(13.0)}, direction = defines.direction.west, force = game.forces.neutral}
      ce{name = "fast-inserter", position = {center.x+(10.0),center.y+(13.0)}, direction = defines.direction.east, force = game.forces.neutral}
      ce{name = "gun-turret", position = {center.x+(11.5),center.y+(12.5)}, force = game.forces.enemy}.insert{name = "firearm-magazine", count=2}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(12.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-15.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-16.0),center.y+(14.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-13.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-14.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-11.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-9.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-10.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-7.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-6.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-5.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-4.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-2.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(-1.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(3.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(5.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(7.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(6.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(9.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(11.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(10.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(14.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(15.0),center.y+(15.0)}, force = game.forces.neutral}
      ce{name = "stone-wall", position = {center.x+(14.0),center.y+(15.0)}, force = game.forces.neutral}
   end,
}

function spawnLargeRuins(center)
   l_ruins[math.random(#l_ruins)](center) --call a random function
   game.surfaces[1].set_tiles({{name = "concrete", position = center}})
end
