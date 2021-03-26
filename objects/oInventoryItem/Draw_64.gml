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
}