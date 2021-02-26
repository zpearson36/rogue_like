/// @description Insert description here
// You can write your code in this editor
enum STATE
{
	VIEW,
	TEXTENTER
}
state = STATE.VIEW


// Enter Name Field
c_border = c_black
name_prompt = "Name: "
txt_field = ""
name_field_x = 50
name_field_y = 28
field_x = name_field_x + string_length(name_prompt) * font_get_size(fNamePrompt) - 50
field_y =  name_field_y + 9
field_width = 300
field_height = font_get_size(fTextInput) * 2



