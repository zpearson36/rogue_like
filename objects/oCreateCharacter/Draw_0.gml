/// @description Insert description here
// You can write your code in this editor

//Draw Name Entry Field
draw_set_color(c_ltgray)
draw_set_font(fNamePrompt)
draw_text(name_field_x, name_field_y, name_prompt)
draw_set_color(c_border)
draw_rectangle(field_x, field_y, field_x + field_width + 1, field_y + field_height, true)
draw_set_color(c_black)
draw_set_alpha(.5)
draw_rectangle(field_x, field_y, field_x + field_width, field_y + field_height, false)
draw_set_alpha(1)
draw_set_font(fTextInput)
draw_set_color(c_ltgray)
draw_text(field_x + 3, field_y + 3, txt_field)

//Draw Primary Stat Fields
draw_set_color(c_ltgray)
draw_set_font(fStatHeading)
draw_text(stat_header_x, stat_header_y,"Level 1")
draw_set_font(fStatPoints)
draw_text(stat_header_x, stat_points_y, "Points Available: " + string(available_points))
//draw_rectangle(xx, yy, xx+10, yy+10, false)
for(var i = 0; i < array_length(stat_names); i++)
{
	draw_text(stat_header_x, stat_points_y + 50 + 75 * i, string_upper(stat_names[i]))
	
	draw_set_color(c_black)
	draw_rectangle(175, stat_points_y + 50 + 75 * i, 190, stat_points_y + 50 + 75 * i + 15, true)
	draw_set_alpha(.5)
	draw_rectangle(175, stat_points_y + 50 + 75 * i, 190, stat_points_y + 50 + 75 * i + 15, false)
	draw_set_alpha(1)
	draw_set_color(c_ltgray)
	draw_text(178, stat_points_y + 50 + 75 * i, stats[? stat_names[i]])
	
}