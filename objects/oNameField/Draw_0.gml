/// @description Insert description here
// You can write your code in this editor
if(mouse_x > x and mouse_x < x + field_width and mouse_y > y and mouse_y < y + field_height)
{
	draw_set_color(c_blue)
	draw_rectangle(x - 3, y - 3, x + field_width + 3, y + field_height + 3, false)
}
draw_set_color(c_white)
draw_rectangle(x, y, x + field_width, y + field_height, false)
draw_set_color(c_black)
draw_set_font(fFont)
draw_text(x + 5, y + 5, txt)
draw_set_color(c_white)