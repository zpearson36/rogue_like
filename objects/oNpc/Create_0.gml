/// @description Insert description here
// You can write your code in this editor
event_inherited()
//******************
_health = 10
primStats = instance_create_layer(x, y, layer, oPrimaryStats)
skills = instance_create_layer(x, y, layer, oSkills)
weapon_states = []
weapon = instance_create_layer(x, y, layer, oWeapon)
array_push(weapon_states, weapon.details)
current_weapon_state = 0
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
		_wStates: weapon_states,
		_weapon: weapon.save(),
		currentWS: current_weapon_state,
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
	weapon_states = obj._wStates
	current_weapon_state = obj.currentWS
	x = obj._x
	y = obj._y
	name = obj._name
	sprite = obj._sprite
}