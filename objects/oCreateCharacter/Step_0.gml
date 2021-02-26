/// @description Insert description here
// You can write your code in this editor

switch state
{
	case STATE.VIEW:
	{
		c_border = c_black
		if(mouse_x >= field_x and mouse_y >= field_y and mouse_x <= field_x + field_width and mouse_y <= field_y + field_height)
		{
			c_border = c_ltgray
			if(mouse_check_button_pressed(mb_left))
			{
				txt_box = instance_create_depth((room_width / 2) - 250, room_height / 2 - 75, -5000, text_box)
				txt_box.field = self
				state = STATE.TEXTENTER
			}
		}
		break;
	}
	case STATE.TEXTENTER:
	{
		if !instance_exists(text_box) state = STATE.VIEW
		break;
	}
}