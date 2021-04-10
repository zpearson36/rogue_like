/// @description Insert description here
// You can write your code in this editor
if(array_length(ds_map_keys_to_array(item.func_map)) != array_length(action_list))
{
	var options = ds_map_keys_to_array(item.func_map)
	for(var i = 0; i < array_length(options); i++)
	{
		var tmp_action = instance_create_layer(x + width - 100, y + 10 + i * 25, layer, oInvAction)
		tmp_action.text = options[i]
		tmp_action.action = options[i]
		tmp_action.owner = self
		array_push(action_list, tmp_action)
	}
}
if(prev_y != y)
{
	for(var i = 0; i < array_length(action_list); i++)
	{
		action_list[i].y = y + 10 + i * 25
	}
	prev_y = y
}
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
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.IDLE
			}
			break
		}
		if(y < upper_boundary or y >= lower_boundary)
		{
			state = INV_STATES.HIDDEN
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.HIDDEN
			}
			break
		}
		if(device_mouse_x_to_gui(0) > x and device_mouse_y_to_gui(0) > y and device_mouse_x_to_gui(0) < x + width and device_mouse_y_to_gui(0) < y + height)
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
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.HIDDEN
			}
			break
		}
		if(mouse_check_button_pressed(mb_left))
		{
			state = INV_STATES.SELECTED
			owner.inv_selected_obj = self
			c_fill = c_white
			c_outline = c_white
			c_text = c_black
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.IDLE
			}
			break
		}
		if(not(device_mouse_x_to_gui(0) > x and device_mouse_y_to_gui(0) > y and device_mouse_x_to_gui(0) < x + width and device_mouse_y_to_gui(0) < y + height))
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
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.HIDDEN
			}
			break
		}
		if(owner.inv_selected_obj != self)
		{
			state = INV_STATES.IDLE
			for(var i = 0; i < array_length(action_list); i++)
			{
				action_list[i].state = INV_STATES.HIDDEN
			}
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