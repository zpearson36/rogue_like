/// @description Insert description here
// You can write your code in this editor
if(menu.major_skills_available == 0 and menu.minor_skills_available == 0 and menu.available_points == 0 and menu.txt_field != "")
{
	var game = instance_create_layer(x, y, layer, oGame)
	game.persistent = true
	subimg = 1
	with(menu)
	{
		var xx = irandom(room_width)
		var yy = irandom(room_height)
		
		while(game.dungeon_room.grid[xx div CELLSIZE][yy div CELLSIZE] != FLOOR)
		{
			xx = irandom(room_width)
			yy = irandom(room_height)
		}
		
		var char = instance_create_layer(xx, yy, layer, oPc)
		char.persistent = true
		char.name = txt_field
		char.primStats = instance_create_layer(x, y, layer, oPrimaryStats)
		char.primStats.set("strength",     stats[? "strength"])
		char.primStats.set("dexterity",    stats[? "dexterity"])
		char.primStats.set("intelligence", stats[? "intelligence"])
		char.primStats.set("endurance",    stats[? "endurance"])
		char.primStats.persistent = true
		for(var i = 0; i < array_length(skillNames); i++)
		{
				var skill_bonus = 0
				if skillLevels[? skillNames[i]] == MAJOR_SKILL.MAJOR skill_bonus = 25
				if skillLevels[? skillNames[i]] == MAJOR_SKILL.MINOR skill_bonus = 10
				skills.skillVal[? skillNames[i]] += skill_bonus
		}
		char.skills = skills
		char.skills.persistent = true
		
		char.inventory.add_item(get_weapon("dagger"))
		char.inventory.add_item(get_weapon("short_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
		char.inventory.add_item(get_weapon("long_sword"))
	}
	//instance_create_layer(irandom(room_width), irandom(room_height), layer, oNpc)

	game.running = true
	room_goto_next()
}
else
{
	var tbox = instance_create_depth((room_width / 2) - 250, room_height / 2 - 75, -5000, text_box_no_input)
	if(menu.txt_field == "")
	{
		tbox.prompt = "Please enter name"
	}
	else
	{
		tbox.prompt = "Stat/Skill points remaining"
	}
}