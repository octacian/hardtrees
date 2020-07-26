-- hardtrees/override.lua
hardtrees.override = {} -- override global variable

local moretrees = false
-- if moretrees, then moretrees true
if minetest.get_modpath("moretrees") then moretrees = true end

-- [function] override tree nodes
function hardtrees.override.tree(name)
  -- if tree registered, override
  if minetest.registered_nodes[name] then
    local groups = minetest.registered_nodes[name].groups -- get groups
    groups.oddly_breakable_by_hand = 0 -- breakable by hand false
    minetest.override_item(name, {groups = groups}) -- override
  else
    minetest.log("action", "WARNING: [hardtrees] "..name.." not registered, could not override.")
  end
end

-- [function] override leaf nodes
function hardtrees.override.leaf(name, sapling)
  -- if leaf and sapling register, override
  if minetest.registered_nodes[name] and minetest.registered_nodes[sapling] then
    minetest.override_item(name, {
      climbable = true,
      walkable = false,
      drop = {
  		max_items = 2,
  		items = {
        {
  				-- player will get sticks with 1/7 chance
  				items = {"default:stick"},
  				rarity = 5,
  			},
  			{
  				-- player will get sapling with 1/20 chance
  				items = {sapling},
  				rarity = 20,
  			},
  			{
  				-- player will get leaves
  				items = {name},
  			}
  		}
  	},
    })
  else
    minetest.log("action", "WARNING: [hardtrees] "..name.." and "..sapling.." not registered, could not override.")
  end
end

-- [function] override moretrees
function hardtrees.override.moretrees(name)
    hardtrees.override.tree("moretrees:"..name.."_trunk")
    hardtrees.override.leaf("moretrees:"..name.."_leaves", "moretrees:"..name.."_sapling")
end

-- [DEFAULT OVERRIDES]
-- default:tree
hardtrees.override.tree("default:tree")
hardtrees.override.leaf("default:leaves", "default:sapling")

-- default:jungle
hardtrees.override.tree("default:jungletree")
hardtrees.override.leaf("default:jungleleaves", "default:junglesapling")

-- default:pine
hardtrees.override.tree("default:pine_tree")
hardtrees.override.leaf("default:pine_needles", "default:pine_sapling")

-- default:acacia
hardtrees.override.tree("default:acacia_tree")
hardtrees.override.leaf("default:acacia_leaves", "default:acacia_sapling")

-- default:aspen
hardtrees.override.tree("default:aspen_tree")
hardtrees.override.leaf("default:aspen_leaves", "default:aspen_sapling")

-- [MORETREES OVERRIDES]
if minetest.get_modpath("moretrees") then
  -- moretrees:apple_tree
  hardtrees.override.moretrees("apple_tree")

  -- moretrees:beech
  hardtrees.override.moretrees("beech")

  -- moretrees:birch
  hardtrees.override.moretrees("birch")

  -- moretrees:fir
  hardtrees.override.tree("moretrees:fir_trunk")
  hardtrees.override.leaf("moretrees:fir_leaves", "moretrees:fir_sapling")
  hardtrees.override.leaf("moretrees:fir_leaves_bright", "moretrees:fir_sapling")

  -- moretrees:jungletree
  hardtrees.override.tree("moretrees:jungletree_trunk")
  hardtrees.override.leaf("moretrees:jungletree_leaves_red", "default:junglesapling")
  hardtrees.override.leaf("moretrees:jungletree_leaves_yellow", "default:junglesapling")

  -- moretrees:palm
  hardtrees.override.moretrees("palm")

  -- moretrees:rubber
  hardtrees.override.moretrees("rubber_tree")

  -- moretrees:sequoia
  hardtrees.override.moretrees("sequoia")

  -- moretrees:spruce
  hardtrees.override.moretrees("spruce")

  -- moretrees:willow
  hardtrees.override.moretrees("willow")

  -- moretrees:oak
  hardtrees.override.moretrees("oak")
end
