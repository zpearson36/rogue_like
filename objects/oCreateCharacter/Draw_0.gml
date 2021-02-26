/// @description Insert description here
// You can write your code in this editor
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