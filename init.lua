-- hardtrees/init.lua

hardtrees = { -- global variables
	require_tools = minetest.settings:get_bool("hardtrees_require_tools", true),
	rock_tools = minetest.settings:get_bool("hardtrees_rock_tools", true),
	add_rocks = minetest.settings:get_bool("hardtrees_add_rocks", true),
	gen_rocks = minetest.settings:get_bool("hardtrees_gen_rocks", true),
	rock_distance = tonumber(minetest.settings:get("hardtrees_rock_distance")) or 5,
	rock_interval = tonumber(minetest.settings:get("hardtrees_rock_interval")) or 60,
	rock_gen_chance = tonumber(minetest.settings:get("hardtrees_rock_gen_chance")) or 13,
	rock_dig_chance = tonumber(minetest.settings:get("hardtrees_rock_dig_chance")) or 10,
	gen_sticks = minetest.settings:get_bool("hardtrees_gen_sticks", true),
	stick_distance = tonumber(minetest.settings:get("hardtrees_stick_distance")) or 3,
	stick_interval = tonumber(minetest.settings:get("hardtrees_stick_interval")) or 1440,
	stick_gen_chance = tonumber(minetest.settings:get("hardtrees_stick_gen_chance")) or 50,
	stick_dig_chance = tonumber(minetest.settings:get("hardtrees_stick_dig_chance")) or 5,
}

hardtrees.modpath = minetest.get_modpath("hardtrees") -- modpath
hardtrees.worldpath = minetest.get_worldpath() -- worldpath
local modpath = hardtrees.modpath -- modpath shortcut



-- load generation lua
if hardtrees.add_rocks then dofile(modpath.."/rocks.lua") end -- rocks
if hardtrees.gen_sticks then dofile(modpath.."/sticks.lua") end -- sticks

-- load optional lua
if hardtrees.require_tools then dofile(modpath.."/override.lua") end -- tree & leave overrides
if hardtrees.rock_tools then
  dofile(modpath.."/tools.lua") -- tools
  dofile(modpath.."/recipes.lua") -- recipes
end
