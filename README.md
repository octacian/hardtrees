Hard Trees [hardtrees]
======================
**Version 0.1**

**License: MIT (see LICENSE.txt)**

hardtrees is a mod with a very simple concept. Trees are made harder, meaning you cannot punch them with your fists. Instead, you must find rocks on cobble, stone, mossy cobble, or sandstone, and make the appropriate rock tool, in this case, an axe. However, to make an axe you must have sticks, for which there are two methods to optain. When leaves are broken then have a 1 out of 13 chance to drop not only the broken node, but also a stick. Once every day, sticks also drop from trees to the group. The mod uses overrides to make trees unbreakable by hand, and also modifies leaves so that they drop the needed items. Leaves are also modified to act as ladders, so you can climb through the tops of trees.

## Configuration
Within the mod directory, is `conf.txt` within which you can specify many of the settings used within this mod. You can also create world specific configuration files by placing another `conf.txt` file within the world directory. Remember, you do not have to specify all settings in either configuration file, however, only those that you would like to change from the default.

### `config.txt` Example
```lua
-- hardtrees config --

-- require tools to break trees (default: true)
require_tools = true

-- rock tools (default: true)
rock_tools = true

-- generate rocks (default: true)
gen_rocks = true

-- distance between rocks (default: 5)
-- gen_rocks must be true
rock_distance = 5

-- rock generation interval (default: 60)
-- gen_rocks must be true
rock_interval = 60

-- rock abm chance (default: 13)
-- gen_rocks must be true
rock_chance = 13

-- generate sticks (default: true)
gen_sticks = true

-- distance between stick and tree (default: 3)
-- gen_sticks must be true
stick_distance = 3

-- stick generation interval (default: 1440.0)
-- gen_sticks must be true
stick_interval = 1440.0

-- stick abm chance (default: 50)
-- gen_sticks must be true
stick_chance = 50
```
### Installation and Updates
Unzip the archive, rename the folder to `hardtrees`, and place it in `minetest/mods` or in the mods folder of the subgame in which you wish to use ServerTools.

You can also install this mod in the `worldmods` folder inside any world directory to use it only within one world.

For further information or help see:
http://wiki.minetest.com/wiki/Installing_Mods

To update, periodically check the [Gogs repository](http://208.69.243.45:3000/octacian/hardtrees) and download either the latest release or the master branch (most up to date, but often unstable).

The mod will soon include an auto update function, which will work on its own so long as you have internet.