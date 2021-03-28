/// @description Insert description here
// You can write your code in this editor
if(state != INV_STATES.HIDDEN)
{
	draw_set_color(c_fill)
	draw_set_alpha(1)
	draw_rectangle(x, y, x + width, y + height, false)
	draw_set_color(c_outline)
	draw_set_alpha(1)
	draw_rectangle(x, y, x + width, y + height, true)
	draw_set_color(c_text)
	draw_text(x + 10, y + 10, item.name)
	
	var x_offset = 10
	var y_offset = 45
	draw_rectangle_color(x + x_offset, y + y_offset, x + x_offset + 64, y + y_offset + 64, c_black, c_black, c_black, c_black, false)
	draw_rectangle_color(x + x_offset, y + y_offset, x + x_offset + 64, y + y_offset + 64, c_white, c_white, c_white, c_white, true)
	draw_sprite(item.icon, -1, x + x_offset, y + y_offset)
}