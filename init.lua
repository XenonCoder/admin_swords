--[[

Copyright (C) 2018 XenonCoder <xenon77.dev@gmail.com>

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 2.1 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License along
with this program; if not, write to the Free Software Foundation, Inc.,
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.

]]--

minetest.register_tool("admin_swords:legendary_sword", {
	description = "Legendary Sword (one shot, one kill!)",
	inventory_image = "legendary_sword.png",
	wield_scale = {x=1.2,y=1,z=.4},
	tool_capabilities = {
		full_punch_interval = 0.01,
		max_drop_level = 0,
		groupcaps = {
			snappy = {times={[1]=0.05, [2]=0.005, [3]=0.0005}, uses = 10000, maxlevel=1},
		},
		damage_groups = {fleshy=1000000, immortal=10000000},
	}
})

--[[
minetest.register_craft({
		output = "admin_swords:legendary_sword",
		recipe = {
			{"default:obsidian_glass", "default:obsidian_shard", "default:obsidian"},
			{"default:mese_crystal", "default:obsidian", "default:diamond"},
			{"bucket:bucket_lava", "default:mese_crystal", "default:obsidian_glass"}
		},
		replacements = {
			{"bucket:bucket_lava", "bucket:bucket_empty"},
		}
	}
)
]]--