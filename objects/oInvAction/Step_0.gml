/// @description Insert description here
// You can write your code in this editor
switch state
{
	case INV_STATES.IDLE:
	{
		if(mouse_x > x and mouse_y > y and mouse_x < x + width and mouse_y < y + height)
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
		if(not(mouse_x > x and mouse_y > y and mouse_x < x + width and mouse_y < y + height))
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