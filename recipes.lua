-- hardtrees/recipes.lua

-- pick
minetest.register_craft({
  output = "hardtrees:pick_rock",
  recipe = {
    {"group:rock", "group:rock", "group:rock"},
    {"", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- shovel
minetest.register_craft({
  output = "hardtrees:shovel_rock",
  recipe = {
    {"", "group:rock", ""},
    {"", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- axe
minetest.register_craft({
  output = "hardtrees:axe_rock",
  recipe = {
    {"group:rock", "group:rock", ""},
    {"group:rock", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- knife
minetest.register_craft({
  output = "hardtrees:knife_rock",
  recipe = {
    {"", "group:rock", ""},
    {"", "group:rock", ""},
    {"", "group:stick", ""},
  }
})
