/// @description Insert description here
// You can write your code in this editor
/*if(mouse_x > x and mouse_x < x + 80 and mouse_y > y and mouse_y < y + font_get_size(fMainMenu) + 5)
{
	col = c_blue
}*/
if(update_bb)
{
	sprite_set_bbox(sprite_index, bb_x_offset + 0, bb_y_offset + 0, bb_x_offset + 80, bb_y_offset + font_get_size(fMainMenu) + 5)
	update_bb = false
}