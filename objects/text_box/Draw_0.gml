/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgray)
draw_rectangle(x, y, box_width, box_height, true)
draw_set_alpha(.9)
draw_rectangle(x, y, box_width, box_height, false)
draw_set_color(c_ltgrey)
draw_set_alpha(1)
draw_text(field_x, y + 35, "Enter Character Name")
draw_set_alpha(.5)
draw_set_color(c_black)
draw_rectangle(field_x, field_y, field_x + field_width, field_y + field_height, false)
draw_set_font(fTextInput)
draw_set_color(c_white)
draw_text(field_x + 5, field_y + 10, keyboard_string)
draw_set_alpha(1)