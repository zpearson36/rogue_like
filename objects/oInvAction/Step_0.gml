/// @description Insert description here
// You can write your code in this editor
switch state
{
	case INV_STATES.IDLE:
	{
		if(device_mouse_x_to_gui(0) > x and device_mouse_y_to_gui(0) > y and device_mouse_x_to_gui(0) < x + width and device_mouse_y_to_gui(0) < y + height)
		{
			state = INV_STATES.HOVER
			c_color = c_gray
			break;
		}
		break;
	}
	case INV_STATES.HOVER:
	{
		if(mouse_check_button_pressed(mb_left))
		{
			state = INV_STATES.SELECTED
			break
		}
		if(not(device_mouse_x_to_gui(0) > x and device_mouse_y_to_gui(0) > y and device_mouse_x_to_gui(0) < x + width and device_mouse_y_to_gui(0) < y + height))
		{
			state = INV_STATES.IDLE
			c_color = c_white
			break;
		}
		break;
	}
	case INV_STATES.SELECTED:
	{
		owner.item.state = owner.item.func_map[? text]
		state = INV_STATES.IDLE
		break;
	}
	case INV_STATES.HIDDEN:
	{
		break;
	}
}