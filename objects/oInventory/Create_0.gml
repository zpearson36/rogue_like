/// @description Insert description here
// You can write your code in this editor
event_inherited()

contents = []

function save()
{
	show_debug_message("FUCK!")
	var itemArray = []
	for(var i = 0; i < array_length(contents); i++)
	{
		array_push(itemArray, contents[i].save())
	}
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		_contents: itemArray
	}
	return _saveEntity
}

function load(obj)
{
	for(var i = 0; i < array_length(obj._contents); i++)
	{
		var temp_obj = instance_create_layer(x, y, layer, obj._contents[i].obj)
		temp_obj.load(obj._contents[i])
		array_push(contents, temp_obj)
	}
}

function add_item(item)
{
	array_push(contents, item)
}

function remove_item(index)
{
	var tmp_obj = contents[index]
	array_delete(contents, index, 1)
	return tmp_obj
}

function search_by_name(str)
{
	// TODO!!!!!!!!!
}