/// @description Insert description here
// You can write your code in this editor
event_inherited()
//******************
_health = 10
primStats = instance_create_layer(x, y, layer, oPrimaryStats)
skills = instance_create_layer(x, y, layer, oSkills)
weapon = instance_create_layer(x, y, layer, oWeapon)
target = undefined
//*******************
x = (x div CELLSIZE) * CELLSIZE
y = (y div CELLSIZE) * CELLSIZE
sprite = sNpc
name = "NPC Character"

function save()
{
	var _saveEntity = {
		obj: object_get_name(object_index),
		_health: _health,
		_stats: primStats.save(),
		_skills: skills.save(),
		_weapon: weapon.save(),
		_x: x,
		_y: y,
		_sprite: sprite,
		_name: name
		}
	return _saveEntity
}

function load(obj)
{
	_health = obj._health
	primStats = instance_create_layer(x, y, layer, oPrimaryStats)
	primStats.load(obj._stats)
	skills = instance_create_layer(x, y, layer, oSkills)
	skills.load(obj._skills)
	weapon = instance_create_layer(x, y, layer, oWeapon)
	weapon.load(obj._weapon)
	x = obj._x
	y = obj._y
	name = obj._name
	sprite = obj._sprite
}