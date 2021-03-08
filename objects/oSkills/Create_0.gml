/// @description Insert description here
// You can write your code in this editor
event_inherited()

skillVal = ds_map_create()
//dex based
skillVal[? "short_blade"] = 5
skillVal[? "pole_arm"] = 5
skillVal[? "spear"] = 5
skillVal[? "short_bow"] = 5
skillVal[? "unarmed"] = 5
skillVal[? "unarmored"] = 5
skillVal[? "light_armor"] = 5
skillVal[? "dodge"] = 5
skillVal[? "sneak"] = 5
skillVal[? "lockpick"] = 5
//str based
skillVal[? "long_blade"] = 5
skillVal[? "blunt"] = 5
skillVal[? "axe"] = 5
skillVal[? "long_bow"] = 5
skillVal[? "cross_bow"] = 5
skillVal[? "medium_armor"] = 5
skillVal[? "heavy_armor"] = 5
skillVal[? "block"] = 5
//int based	
skillVal[? "destruction_magic"] = 5
skillVal[? "conjuration_magic"] = 5
skillVal[? "illusion_magic"] = 5
skillVal[? "restoration_magic"] = 5
skillVal[? "mysticism_magic"] = 5
	
function modifier(str)
{
	//show_debug_message(str)
	return (skillVal[? str] - 50) * .2
}

function save()
{
	var keyArray = []
	ds_map_keys_to_array(skillVal, keyArray)
	var valArray = []
	for(var i = 0; i < array_length(keyArray); i++)
	{
		array_push(valArray, skillVal[? keyArray[i]])
	}
	var _saveEntity = {
		obj: object_get_name(object_index),
		_keyArray: keyArray,
		_valArray: valArray
	}
	
	return _saveEntity
}

function load(obj)
{
	for(var i = 0; i < array_length(obj._keyArray); i++)
	{
		skillVal[? obj._keyArray[i]] = obj._valArray[i]
	}
}