/// @description Insert description here
// You can write your code in this editor
randomize()
char = instance_create_layer(x, y, layer, oPc)
not_char = instance_create_layer(irandom(room_width), irandom(room_height), layer, oNpc)
not_char.target = char
state = GAME_STATE.PC_TURN
flip_turn = false
for(var i = 0; i < MAPWIDTH; i++)
{
	for(var j = 0; j < MAPHEIGHT; j++)
	{
		map[i][j] = EMPTY//irandom(255)
	}
}