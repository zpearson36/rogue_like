/// @description Insert description here
// You can write your code in this editor
cam_h = camera_get_view_height(view_camera[0])
txt_array = []
max_text_length = 38

function string_split(str, del)
{
	var string_array = []
	var starting_pos = 1
	while(string_pos_ext(del, str, starting_pos))
	{
		var pos = string_pos_ext(del, str, starting_pos)
		show_debug_message(pos)
		array_push(string_array, string_copy(str, starting_pos, pos - starting_pos))
		starting_pos = pos + 1
	}
	array_push(string_array, string_copy(str, starting_pos, string_length(str)))
	return string_array
}

function add_text(str)
{
	var vocab_array = string_split(str, " ")
	show_debug_message(vocab_array)
	var tmp_string = "> " + vocab_array[0]
	var add_last_string = false
	for(var i = 1; i < array_length(vocab_array); i++)
	{
		if(string_length(tmp_string + " " + vocab_array[i]) <= max_text_length)
		{
			tmp_string = tmp_string + " " + vocab_array[i]
	        add_last_string = true
		}
		else
		{
			array_push(txt_array, tmp_string)
			tmp_string = "  " + vocab_array[i]
	        add_last_string = false
		}
	}
	if(add_last_string) array_push(txt_array, tmp_string)
}

//add_text("Above you can see the same screenshot from before, but this time I've underlined the file path. Notice I only underlined part of the path. The first directory listed is the working directory name, and will be the directory you're in when using this file path. Because of this, you only want the underlined portion.")
show_debug_message(txt_array)