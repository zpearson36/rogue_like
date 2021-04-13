/// @description Insert description here
// You can write your code in this editor
event_inherited()
randomize()

/*for(var i = 0; i < MAPWIDTH; i++)
{
       for(var j = 0; j < MAPHEIGHT; j++)
       {
               map[i][j] = EMPTY//irandom(255)
       }
}*/

state = GAME_STATE.PC_TURN
flip_turn = false
show_debug_message("A")
dungeon_room = instance_create_layer(x, y, layer, oDungeon)
show_debug_message("B")
function save()
{
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		_state: state,
		_flip_turn: flip_turn,
		//_map: map,
		_room: room,
		_dungeon: dungeon_room.save()
		
	}
	return _saveEntity
}

function load(obj)
{
	state = obj._state
	flip_turn = obj._flip_turn
	//map = obj._map
	room_goto(obj._room)
	dungeon_room.load(obj._dungeon)
}