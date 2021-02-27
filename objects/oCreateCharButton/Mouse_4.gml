/// @description Insert description here
// You can write your code in this editor
subimg = 1
with(menu)
{
	char = instance_create_layer(irandom(room_width), irandom(room_height), layer, oPc)
	char.persistent = true
	char.name = txt_field
	char.primStats = new primaryStats( stats[? "strength"], stats[? "dexterity"], stats[? "intelligence"], stats[? "endurance"])
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
}
room_goto_next()