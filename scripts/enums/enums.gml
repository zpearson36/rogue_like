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