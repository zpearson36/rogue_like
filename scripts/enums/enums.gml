function primaryStats(_str, _dex, _int, _end) constructor
{
	strength = _str
	dexterity = _dex
	intelligence = _int
	endurance = _end
	
	function get(str)
	{
		switch string_lower(str)
		{
			case "strength":     return strength
			case "dexterity":    return dexterity
			case "intelligence": return intelligence
			case "endurance":    return endurance
			default:
			{
				show_debug_message("No such stat")
				return -1000
			}
		}
	}
}

function skillStats() constructor
{
	skillVal = ds_map_create()
	skillVal[? "short_blade"] = 5
	skillVal[? "long_blade"] = 5
	skillVal[? "blunt"] = 5
	skillVal[? "axe"] = 5
	skillVal[? "pole_arm"] = 5
	skillVal[? "spear"] = 5
	skillVal[? "short_bow"] = 5
	skillVal[? "long_bow"] = 5
	skillVal[? "cross_bow"] = 5
	skillVal[? "unarmed"] = 5
	skillVal[? "unarmored"] = 5
	skillVal[? "light_armor"] = 5
	skillVal[? "medium_armor"] = 5
	skillVal[? "heavy_armor"] = 5
	skillVal[? "block"] = 5
	skillVal[? "dodge"] = 5
	skillVal[? "sneak"] = 5
	skillVal[? "lockpick"] = 5
	skillVal[? "destruction_magic"] = 5
	skillVal[? "conjuration_magic"] = 5
	skillVal[? "illusion_magic"] = 5
	skillVal[? "restoration_magic"] = 5
	skillVal[? "mysticism_magic"] = 5
	
	function modifier(str)
	{
		return (skillVal[? str] - 50) * .2
	}
}

enum PC_STATE
{
	IDLE = 0,
	ATTACKING = 1,
	CASTING = 2,
}

enum GAME_STATE
{
	PC_TURN = 0,
	NPC_TURN = 1
}