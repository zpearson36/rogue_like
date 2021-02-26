/// @description Insert description here
// You can write your code in this editor
if(mouse_x > x and mouse_x < x + field_width and mouse_y > y and mouse_y < y + field_height)
{
	if(mouse_check_button_pressed(mb_left))
	{
		txt_box = instance_create_depth((room_width / 2) - 150, room_height / 2, -5000, text_box)
		txt_box.field = self
	}
}