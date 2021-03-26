/// @description Insert description here
// You can write your code in this editor
switch state
{
	case INV_STATES.IDLE:
	{
		c_fill = c_dkgray
		c_outline = c_ltgray
		c_text = c_white
		if(owner.inv_selected_obj == self)
		{
			state = INV_STATES.SELECTED
			owner.inv_selected_obj = self
			c_fill = c_white
			c_outline = c_white
			c_text = c_black
			break
		}
		if(y < upper_boundary or y >= lower_boundary)
		{
			state = INV_STATES.HIDDEN
			break
		}
		if(mouse_x > x and mouse_y > y and mouse_x < x + width and mouse_y < y + height)
		{
			state = INV_STATES.HOVER
			c_fill = c_ltgray
			c_outline = c_white
			c_text = c_white
			break;
		}
		break;
	}
	case INV_STATES.HOVER:
	{
		if(y < upper_boundary or y >= lower_boundary)
		{
			state = INV_STATES.HIDDEN
			break
		}
		if(mouse_check_button_pressed(mb_left))
		{
			state = INV_STATES.SELECTED
			owner.inv_selected_obj = self
			c_fill = c_white
			c_outline = c_white
			c_text = c_black
			break
		}
		if(not(mouse_x > x and mouse_y > y and mouse_x < x + width and mouse_y < y + height))
		{
			state = INV_STATES.IDLE
			break;
		}
		break;
	}
	case INV_STATES.SELECTED:
	{
		if(y < upper_boundary or y >= lower_boundary)
		{
			state = INV_STATES.HIDDEN
			break
		}
		if(owner.inv_selected_obj != self)
		{
			state = INV_STATES.IDLE
			break
		}
		break;
	}
	case INV_STATES.HIDDEN:
	{
		if(y >= upper_boundary and y < lower_boundary)
		{
			state = INV_STATES.IDLE
			break
		}
		break;
	}
}