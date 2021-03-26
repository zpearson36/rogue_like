// Display Inventory
switch state
{
	case PC_STATE.INVENTORY:
	{
		// Creates black background with grey border
		draw_set_color(c_black)
		draw_set_alpha(.8)
		draw_rectangle(50, 50, room_width - 50, room_height - 50, false)
		draw_set_color(c_grey)
		draw_set_alpha(1)
		draw_rectangle(50, 50, room_width - 50, room_height - 50, true)
		
		if(array_length(inventory.contents) > 0)
		{
			// Creates the inventory buttons to interact with
			if(array_length(inventory.contents) != array_length(inventory_item_dislpay))
			{
				for(var i = 0; i < array_length(inventory.contents); i++)
				{
					var item_btn = instance_create_layer(80, 60 + 155 * i, layer, oInventoryItem)
					item_btn.item = inventory.contents[i]
					item_btn.owner = self
					array_push(inventory_item_dislpay, item_btn)
				}
			}
			
			// Creates scroll bar
			var num_items = array_length(inventory.contents)
			draw_set_color(c_gray)
			var scroll_height = clamp((room_height - 60) / (num_items / 4), 75, room_height - 60)
			var hidden_items = max(num_items - 4, 0)
			var scroll_length = 0
			if(hidden_items != 0)
			{
				scroll_length = ((room_height - 60) - scroll_height) / hidden_items
			}
			draw_rectangle(60, 60 + scroll_index * scroll_length, 70, scroll_height + scroll_index * scroll_length, false)
			
			// updates itm button position for scrolling
			for(var i = 0; i < array_length(inventory_item_dislpay); i++)
			{
				inventory_item_dislpay[i].y = 60 + 155 * (i - scroll_index)
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
		if(array_length(inventory_item_dislpay) > 0)
		{
			for(var i = 0; i < array_length(inventory_item_dislpay); i++)
			{
				var itm = array_pop(inventory_item_dislpay)
				instance_destroy(itm)
			}
		}
		scroll_index = 0
		inv_selected_obj = undefined
	}
}