/// @description Insert description here
// You can write your code in this editor
event_inherited()
details = new weaponDetails("unarmed", 1, 1, [1, 0, 0, 0], "unarmed")

function save()
{
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		_details: details.save()
	}
	return _saveEntity
}

function load(obj)
{
	details.load(obj._details)
}