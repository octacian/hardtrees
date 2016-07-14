-- hardtrees/tools.lua
--[[ TOOLS
hardtrees:pick_rock
hardtrees:shovel_rock
hardtrees:axe_rock
hardtrees:knife_rock
hardtrees:hoe_rock      (if farming is present)
]]--

-- [pick] hardtrees:pick_rock
minetest.register_tool("hardtrees:pick_rock", {
  description = "Rock Pick",
  inventory_image = "tool_rock_pick.png",
  tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[3]=1.60}, uses=7, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

-- [shovel] hardtrees:shovel_rock
minetest.register_tool("hardtrees:shovel_rock", {
	description = "Rock Shovel",
	inventory_image = "tool_rock_shovel.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=0,
		groupcaps={
			crumbly = {times={[1]=3.00, [2]=1.60, [3]=0.60}, uses=7, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

-- [axe] hardtrees:axe_rock
minetest.register_tool("hardtrees:axe_rock", {
	description = "Rock Axe",
	inventory_image = "tool_rock_axe.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=0,
		groupcaps={
			choppy = {times={[2]=3.00, [3]=1.60}, uses=7, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	},
})

-- [knife] hardtrees:knife_rock
minetest.register_tool("hardtrees:kife_rock", {
	description = "Rock Knife",
	inventory_image = "tool_rock_knife.png",
	tool_capabilities = {
		full_punch_interval = 1,
		max_drop_level=0,
		groupcaps={
			snappy={times={[2]=1.6, [3]=0.40}, uses=7, maxlevel=1},
		},
		damage_groups = {fleshy=2},
	}
})

-- if farming, then register hoe
if minetest.get_modpath("farming") then
  -- [hoe] hardtrees:hoe_rock
  farming.register_hoe("hardtrees:hoe_rock", {
    description = "Rock Hoe",
  	inventory_image = "tool_rock_hoe.png",
  	max_uses = 7,
  	material = "group:rock"
  })
end
