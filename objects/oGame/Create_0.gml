/// @description Insert description here
// You can write your code in this editor
randomize()


for(var i = 0; i < MAPWIDTH; i++)
{
	for(var j = 0; j < MAPHEIGHT; j++)
	{
		map[i][j] = EMPTY//irandom(255)
	}
}

weaponsMap = ds_map_create()
weaponsMap[? "Dagger"] = new weaponDetails("Dagger", 1, 1, [0, .02, 0, 0])
weaponsMap[? "Short Sword"] = new weaponDetails("Short Sword", 1, 2, [.01, .025, 0, 0])
weaponsMap[? "Long Sword"] = new weaponDetails("Long Sword", 1, 3, [.05, .05, 0, 0])
weaponsMap[? "Axe"] = new weaponDetails("Axe", 1, 5, [.15, .0, 0, 0])
weaponsMap[? "Spear"] = new weaponDetails("Spear", 2, 2, [.02, .02, 0, 0])


char = instance_create_layer(x, y, layer, oPc)
not_char = instance_create_layer(irandom(room_width), irandom(room_height), layer, oNpc)
not_char.target = char
state = GAME_STATE.PC_TURN
flip_turn = false