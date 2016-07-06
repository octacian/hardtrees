-- hardtrees/recipes.lua

-- pick
minetest.register_craft({
  output = "genesis:pick_rock",
  recipe = {
    {"group:rock", "group:rock", "group:rock"},
    {"", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- shovel
minetest.register_craft({
  output = "genesis:shovel_rock",
  recipe = {
    {"", "group:rock", ""},
    {"", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- axe
minetest.register_craft({
  output = "genesis:axe_rock",
  recipe = {
    {"group:rock", "group:rock", ""},
    {"group:rock", "group:stick", ""},
    {"", "group:stick", ""},
  }
})

-- knife
minetest.register_craft({
  output = "genesis:knife_rock",
  recipe = {
    {"", "group:rock", ""},
    {"", "group:rock", ""},
    {"", "group:stick", ""},
  }
})
