/// @description Insert description here
// You can write your code in this editor
event_inherited()

//******************
_health = 10
primStats = instance_create_layer(x, y, layer, oPrimaryStats)
skills = instance_create_layer(x, y, layer, oSkills)
unarmed = instance_create_layer(x, y, layer, oWeapon)
weapon = unarmed
target = undefined
inventory = instance_create_layer(x, y, layer, oInventory)
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
		_name: name,
		_inventory: inventory.save()
		}
	return _saveEntity
}

function load(obj)
{
	_health = obj._health
	primStats.load(obj._stats)
	skills.load(obj._skills)
	weapon.load(obj._weapon)
	x = obj._x
	y = obj._y
	name = obj._name
	sprite = obj._sprite
	inventory.load(obj._inventory)
}