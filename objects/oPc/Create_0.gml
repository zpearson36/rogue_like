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
inventory_item_dislpay = []
inv_selected_obj = undefined
scroll_index = 0
inventory.add_item(instance_create_layer(x, y, layer, oWeapon))
inventory.add_item(instance_create_layer(x, y, layer, oWeapon))
inventory.add_item(instance_create_layer(x, y, layer, oWeapon))
inventory.add_item(instance_create_layer(x, y, layer, oWeapon))
inventory.add_item(instance_create_layer(x, y, layer, oWeapon))
//*******************

sprite = sPc
name = "PC character"
state = PC_STATE.IDLE
xx = (x div CELLSIZE) * CELLSIZE
yy = (y div CELLSIZE) * CELLSIZE

function save()
{
	var _saveEntity = {
		obj: object_get_name(object_index),
		_health: _health,
		_stats: primStats.save(),
		_skills: skills.save(),
		_weapon: weapon.save(),
		_x: xx,
		_y: yy,
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
	xx = obj._x
	yy = obj._y
	name = obj._name
	sprite = obj._sprite
	inventory.load(obj._inventory)
}