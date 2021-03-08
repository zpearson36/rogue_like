/// @description Insert description here
// You can write your code in this editor
event_inherited()
randomize()


for(var i = 0; i < MAPWIDTH; i++)
{
	for(var j = 0; j < MAPHEIGHT; j++)
	{
		map[i][j] = EMPTY//irandom(255)
	}
}

/*weaponsMap = ds_map_create()
weaponsMap[? "Dagger"]      = new weaponDetails("Dagger",      1, 1, [  0,  .02, 0, 0], "short_blade")
weaponsMap[? "Short Sword"] = new weaponDetails("Short Sword", 1, 2, [.01, .025, 0, 0], "short_blade")
weaponsMap[? "Long Sword"]  = new weaponDetails("Long Sword",  1, 3, [.05,  .05, 0, 0], "long_blade")
weaponsMap[? "Axe"]         = new weaponDetails("Axe",         1, 5, [.15,   .0, 0, 0], "axe")
weaponsMap[? "Spear"]       = new weaponDetails("Spear",       2, 2, [.02,  .02, 0, 0], "spear")
weaponsMap[? "Long Bow"]    = new weaponDetails("Long Bow",    7, 2, [.05,    0, 0, 0], "long_bow")*/



//not_char = instance_create_layer(irandom(room_width), irandom(room_height), layer, oNpc)
//not_char.persistent = true
state = GAME_STATE.PC_TURN
flip_turn = false
function save()
{
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		_state: state,
		_flip_turn: flip_turn,
		_map: map,
		_room: room
		
	}
	return _saveEntity
}

function load(obj)
{
	state = obj._state
	flip_turn = obj._flip_turn
	map = obj._map
	room_goto(obj._room)
}