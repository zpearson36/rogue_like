/// @description Insert description here
// You can write your code in this editor
event_inherited()

strength = 1
dexterity = 1
intelligence = 1
endurance = 1
	
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
			return -1
		}
	}
}

function increment(str, val)
{
	switch string_lower(str)
	{
		case "strength":     
		{
			strength += val
			return true
		}
		case "dexterity":     
		{
			dexterity += val
			return true
		}
		case "intelligence":     
		{
			intelligence += val
			return true
		}
		case "endurance":     
		{
			endurance += val
			return true
		}
		default:
		{
			show_debug_message("No such stat")
			return false
		}
	}
}

function set(str, val)
{
	switch string_lower(str)
	{
		case "strength":     
		{
			strength = val
			return true
		}
		case "dexterity":     
		{
			dexterity = val
			return true
		}
		case "intelligence":     
		{
			intelligence = val
			return true
		}
		case "endurance":     
		{
			endurance = val
			return true
		}
		default:
		{
			show_debug_message("No such stat")
			return false
		}
	}
}

function save()
{
	var _saveEntity = {
		obj: object_get_name(object_index),
		_str: strength,
		_dex: dexterity,
		_int: intelligence,
		_end: endurance
	}
	return _saveEntity
}

function load(obj)
{
	strength = obj._str
	dexterity = obj._dex
	intelligence = obj._int
	endurance = obj._end
}