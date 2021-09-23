// Display Inventory
draw_text_color(50, 25, mouse_y, c_red, c_red, c_red, c_red, 1)
draw_text_color(50, 50, device_mouse_y_to_gui(0), c_red, c_red, c_red, c_red, 1)
switch state
{
	case PC_STATE.INVENTORY:
	{		
		if(array_length(inventory.contents) > 0)
		{
			
			// Creates scroll bar
			var num_items = array_length(inventory.contents)
			draw_set_color(c_gray)
			var scroll_height = clamp((window_get_height() - 60) / (num_items / 4), 75, window_get_height() - 60)
			var hidden_items = max(num_items - 4, 0)
			var scroll_length = 0
			if(hidden_items != 0)
			{
				scroll_length = ((window_get_height() - 60) - scroll_height) / hidden_items
			}
			draw_rectangle(60, 60 + scroll_index * scroll_length, 70, scroll_height + scroll_index * scroll_length, false)
			
			// updates itm button position for scrolling
			for(var i = 0; i < array_length(inventory_item_display); i++)
			{
				inventory_item_display[i].y = 60 + 155 * (i - scroll_index)
			}
		}
		else
		{
			//displays message if inventory is empty
			draw_set_color(c_ltgray)
			draw_text(60, 60, "Inventory is Empty")
			draw_set_color(c_white)
		}
		draw_set_color(c_white)
		break;
	}
	default:
	{
		// deletes any itm buttons that exist when not in inventory mode
		if(array_length(inventory_item_display) > 0)
		{
			for(var i = 0; i < array_length(inventory_item_display); i++)
			{
				var itm = array_pop(inventory_item_display)
				instance_destroy(itm)
			}
		}
		scroll_index = 0
		inv_selected_obj = undefined
	}
}