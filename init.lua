-- hardtrees/init.lua
hardtrees = {} -- global variables
hardtrees.modpath = minetest.get_modpath("hardtrees") -- modpath
hardtrees.worldpath = minetest.get_worldpath() -- worldpath
modpath = hardtrees.modpath -- modpath

-- [function] read config
function hardtrees.conf()
  local f = io.open(hardtrees.worldpath.."/hardtrees_conf.txt", "r") -- open file
  if f == nil then dofile(hardtrees.modpath.."/conf.txt") end -- read config
  -- check for nil or unset values
  if not require_tools then local require_tools = true end -- require tools
  if not rock_tools then local rock_tools = true end -- rock tools
  if not gen_rocks then local gen_rocks = true end -- generate rocks
  if not rock_distance then local rock_distance = 5 end -- rock generation distance
  if not rock_interval then local rock_interval = 60 end -- rock generation interval
  if not rock_chance then local rock_chane = 13 end -- rock generation chance
  if not gen_sticks then local gen_sticks = true end -- generate sticks
  if not stick_distance then local stick_distance = 3 end -- stick generation distance
  if not stick_interval then local stick_interval = 1440 end -- stick generation interval
  if not stick_chance then local stick_chance = 50 end -- stick generation chance
end

hardtrees.conf()

-- load generation lua
if gen_rocks == true then dofile(modpath.."/rocks.lua") end -- rocks
if gen_sticks == true then dofile(modpath.."/sticks.lua") end -- sticks

-- load optional lua
if require_tools == true then dofile(modpath.."/override.lua") end -- tree & leave overrides
if rock_tools == true then
  dofile(modpath.."/tools.lua") -- tools
  dofile(modpath.."/recipes.lua") -- recipes
end
