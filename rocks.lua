-- hardtrees/rocks.lua
hardtrees.conf() -- read conf
--[[ ROCK
hardtrees:rock

Rocks are generated via ABM every 60 seconds if the chunk is active. They
are found near cobble, stone, mossy cobble, clay, and sandstone. No two
rocks are ever found closer than 5 blocks/meters. Generation does not
replace other nodes, and will only continue if node selected for changing
is air. See conf.txt to adjust these values. When a rock is broken it
uses an ore like inventory and wield image, however it can still be placed
as normal.
]]--

-- hardtrees:rock
minetest.register_node("hardtrees:rock", {
  description = "Rock",
	tiles = {
		"rock_b.png",
		"rock_b.png",
		"rock_s.png",
		"rock_s.png",
		"rock_f.png",
		"rock_f.png"
	},
  inventory_image = "rock_lump.png",
  wield_image = "rock_lump.png",
  drop = "hardtrees:rock",
  groups = {cracky = 3, stone = 1, oddly_breakable_by_hand = 1, rock = 1},
  sounds = default.node_sound_stone_defaults(),
	paramtype = "light",
  drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, -0.1875, 0.3125, -0.375, 0.1875}, -- rock
		}
	}
})

-- [abm] rock placment
minetest.register_abm({
  nodenames = { "default:cobble", "default:stone", "default:mossycobble", "default:clay", "default:sandstone" },
  neighbors = { "air" },
  interval = rock_interval,
  chance = rock_chance,
  action = function(pos, node)
    if minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z}).name == "air" then -- if node is air, place
      if not minetest.find_node_near({x = pos.x, y = pos.y +1, z = pos.z}, rock_distance, "hardtrees:rock") then
        minetest.set_node({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "hardtrees:rock"})
      end
    end
  end,
})
