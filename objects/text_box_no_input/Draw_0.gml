/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_dkgray)
draw_rectangle(x, y, box_width, box_height, true)
draw_set_alpha(.9)
draw_rectangle(x, y, box_width, box_height, false)
draw_set_color(c_ltgrey)
draw_set_alpha(1)
draw_text(field_x, y + 35, prompt)
draw_set_color(c_white)
draw_set_alpha(1)