local mod_name = minetest.get_current_modname()

minetest.register_node(mod_name .. ":lampeauto", {
	description = "Lampe automatique",
	paramtype = "light",
	paramtype2 = "facedir",
	type=node,
	tiles = {"lamp.png"},
	light_source = default.LIGHT_MAX,
	sunlight_propagates = true,
	groups = {snappy=3},
	sounds = default.node_sound_wood_defaults(),
	
	on_rightclick = function(pos, node, player, pointed_thing)
		minetest.log( minetest.get_timeofday()*24000)
		if (minetest.get_timeofday()*24000)< 4800 then 
			minetest.sound_play("tir")
			node.light_source = default.LIGHT_MAX-5
		else
			node.light_source = default.LIGHT_MAX-10
		end
	end,
})
