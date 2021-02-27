/// @description Insert description here
// You can write your code in this editor
enum STATE
{
	VIEW,
	TEXTENTER
}
state = STATE.VIEW


// Enter Name Field
c_border = c_black
name_prompt = "Name: "
txt_field = ""
name_field_x = 50
name_field_y = 28
field_x = name_field_x + string_length(name_prompt) * font_get_size(fNamePrompt) - 50
field_y =  name_field_y + 9
field_width = 300
field_height = font_get_size(fTextInput) * 2

// Primary Stats
stat_header_x = 50
stat_header_y = 125
stat_points_y = stat_header_y + 50
stats = ds_map_create()
stats[? "strength"] = 1
stats[? "dexterity"] = 1
stats[? "intelligence"] = 1
stats[? "endurance"] = 1
stat_names = ds_map_keys_to_array(stats)
available_points = 15
max_points = 15
for(var i = 0; i < array_length(stat_names); i++)
{
	var btn1 = instance_create_layer(184, stat_points_y + 50 + 75 * i - 13, layer, oArrowButton)
	btn1.menu = self
	btn1.stat = stat_names[i]
	btn1.inc_amnt = 1
	var btn2 = instance_create_layer(183, stat_points_y + 50 + 75 * i + 29, layer, oArrowButton)
	btn2.rot = 180
	btn2.menu = self
	btn2.stat = stat_names[i]
	btn2.inc_amnt = -1
}


// Skill Statas
skill_header = 315
skills = new skillStats()
skillsVal = skills.skillVal
skillNames = []
skill_offset = 0
ds_map_keys_to_array(skillsVal, skillNames)
skillLevels = ds_map_create()
for(var i = 0; i < array_length(skillNames); i++)
{
	skillLevels[? skillNames[i]] = MAJOR_SKILL.NO
	skill = instance_create_layer(skill_header + 20 + 205 * (i div 12), stat_points_y + 34 * (i % 12), layer, oSkill)
	skill.txt = skillNames[i]
	skill.menu = self
}
major_skills_available = 3
minor_skills_available = 5


// Create Char Button
btn = instance_create_layer(50, 660, layer, oCreateCharButton)
btn.menu = self
