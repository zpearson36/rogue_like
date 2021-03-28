/// @description Insert description here
// You can write your code in this editor
event_inherited()

name = "unarmed"
wType = "unarmed"
icon_name = "sUnarmed"
icon = sUnarmed
range = 1
baseDamage = 0
damageScale = ds_map_create()
damageScale[? "strength"]     = .5
damageScale[? "dexterity"]    = 0
damageScale[? "intelligence"] = 0
damageScale[? "endurance"]    = 0


function damage(prmStts)
{
	var dmgMod = 0
	var stats = ["strength", "dexterity", "intelligence", "endurance"]
	for(var i = 0; i < array_length(stats); i++)
	{
		dmgMod += (damageScale[? stats[i]] * prmStts.get(stats[i]))
	}
	return baseDamage + dmgMod
}

function save()
{
	var keyArray = []
	ds_map_keys_to_array(damageScale, keyArray)
	var valArray = []
	for(var i = 0; i < array_length(keyArray); i++)
	{
		array_push(valArray, damageScale[? keyArray[i]])
	}
	var _saveEntity =
	{
		obj: object_index, //object_get_name(object_index),
		_name: name,
		_wType: wType,
		_range: range,
		_baseDamage: baseDamage,
		_keyArray: keyArray,
		_valArray: valArray,
		_icon_name: icon_name
	}
	return _saveEntity
}

function load(obj)
{
	for(var i = 0; i < array_length(obj._keyArray); i++)
	{
		damageScale[? obj._keyArray[i]] = obj._valArray[i]
	}
	name = obj._name
	wType = obj._wType
	range = obj._range
	baseDamage = obj._baseDamage
	icon_name = obj._icon_name
}