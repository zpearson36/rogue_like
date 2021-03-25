event_inherited()

_health = 10
primStats = instance_create_layer(x, y, layer, oPrimaryStats)
skills = instance_create_layer(x, y, layer, oSkills)
unarmed = instance_create_layer(x, y, layer, oWeapon)
weapon = unarmed
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