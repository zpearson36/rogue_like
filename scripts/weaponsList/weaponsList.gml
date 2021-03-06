/*function weaponDetails(_name, _range, _damage, _dmgScl, _type) constructor
{
	//@func weaponDetails
	//@param _name            Name to give to weapon
	//@param _range           Range at which weapon is effective
	//@param _damage          Weapons base damage
	//@oaram _dmgScl          How damage is scaled based on stats (must be an array of form [<str>, <dex>, <end>, <int>]
	if(_name == "none")	show_debug_message("Unintentional Weapon Creation. MUST DEBUG!!!!!!")
	name = _name
	wType = _type
	range = _range
	baseDamage = _damage
	damageScale = ds_map_create()
	damageScale[? "strength"]     = _dmgScl[@ 0]
	damageScale[? "dexterity"]    = _dmgScl[@ 1]
	damageScale[? "intelligence"] = _dmgScl[@ 2]
	damageScale[? "endurance"]    = _dmgScl[@ 3]
	
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
		var _saveEntity = {
			_name: name,
			_wType: wType,
			_range: range,
			_baseDamage: baseDamage,
			_keyArray: keyArray,
			_valArray: valArray
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
	}
	
}
*/