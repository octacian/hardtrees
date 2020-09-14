--[[ STICKS
Sticks are generated vai ABM every 14440 seconds if the chunk is active. They
are found on nodes within the group crumbly. This includes, dirt sand, and
others of the crumbly group. Generation requires nodes from the tree and leave
group to present, as well as air. A node from the group tree must be within 3
blocks of the position where a stick is to be generated. These values (interval,
etc...) can be adjusted through conf.txt.
]]

-- drop item
function hardtrees.drop_item(pos, name, number)
  -- if number to drop is greater than 1, use a for loop
  if number > 1 then
    for i=1,number do -- run multiple times
      minetest.add_item({x = pos.x, y = pos.y, z = pos.z}, name) -- add item
    end
  else -- else, run once
    minetest.add_item({x = pos.x, y = pos.y, z = pos.z}, name) -- add item
  end
end

-- [abm] stick generation under trees
minetest.register_abm({
  nodenames = { "group:crumbly" },
  neighbors = { "group:tree", "group:leaves", "air" },
  interval = hardtrees.stick_interval,
  chance = hardtrees.stick_gen_chance,
  action = function(pos, node)
    if minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z}).name == "air" then -- if node is air, place
      if minetest.find_node_near({x = pos.x, y = pos.y + 1, z = pos.z}, hardtrees.stick_distance, "group:tree") then
      	if math.random(1,3) < 3 then -- math random to make more rare
          local number = math.random(1,2) -- place 1 or 2
          hardtrees.drop_item({x = pos.x, y = pos.y + 1, z = pos.z}, {name = "default:stick"}, number) -- drop stick
        end
      end
    end
  end,
})
