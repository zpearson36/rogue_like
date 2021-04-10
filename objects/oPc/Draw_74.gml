/// @description Insert description here
// You can write your code in this editor
// Display Inventory
cam = view_camera[0]
switch state
{
	case PC_STATE.INVENTORY:
	{
		// Creates black background with grey border
		draw_set_color(c_black)
		draw_set_alpha(.8)
		draw_rectangle(50, 50, window_get_width() - 50, window_get_height() - 50, false)
		draw_set_color(c_grey)
		draw_set_alpha(1)
		draw_rectangle(50, 50, window_get_width() - 50, window_get_height() - 50, true)
		draw_set_color(c_white)
		break;
	}
}