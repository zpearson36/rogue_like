event_inherited()

_health = 10
primStats = instance_create_layer(x, y, layer, oPrimaryStats)
skills = instance_create_layer(x, y, layer, oSkills)
weapon_states = []
weapon = instance_create_layer(x, y, layer, oWeapon)
array_push(weapon_states, weapon.details)
current_weapon_state = 0
target = undefined

function save()
{
	var _saveEntity =
	{
		obj: object_get_name(object_index)
	}
	return _saveEntity
}

function load(obj)
{
}