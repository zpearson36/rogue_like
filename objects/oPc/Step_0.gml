/// @description Insert description here
// You can write your code in this editor
switch(oGame.state)
{
	case GAME_STATE.PC_TURN:
	{
		switch(state)
		{
			case PC_STATE.IDLE:
			{
				if(keyboard_check_pressed(vk_tab))
				{
					current_weapon_state += 1
					if current_weapon_state >= array_length(weapon_states) current_weapon_state = 0
					weapon.details = weapon_states[current_weapon_state]
				}
				if(keyboard_check_pressed(ord("W")))
				{
					yy -= CELLSIZE
					oGame.flip_turn = true
					break;
				}
				if(keyboard_check_pressed(ord("S")))
				{
					yy += CELLSIZE
					oGame.flip_turn = true
					break;
				}
				if(keyboard_check_pressed(ord("A")))
				{
					xx -= CELLSIZE
					oGame.flip_turn = true
					break;
				}
				if(keyboard_check_pressed(ord("D")))
				{
					xx += CELLSIZE
					oGame.flip_turn = true
					break;
				}
				if(keyboard_check_pressed(ord("Q")))
				{
					state = PC_STATE.ATTACKING
					break;
				}
			}
			case PC_STATE.ATTACKING:
			{
				if(keyboard_check_pressed(vk_escape))
				{
					state = PC_STATE.IDLE
					break;
				}
				if(keyboard_check_pressed(ord("Q")))
				{
					state = PC_STATE.IDLE
					break;
				}
				if(mouse_check_button_pressed(mb_left))
				{
					var targ = collision_point(mouse_x, mouse_y, oNpc, true, true)
					
					var _x1 = xx - weapon.details.range * CELLSIZE
					var _y1 = yy - weapon.details.range * CELLSIZE
					var _x2 = xx + (1 + weapon.details.range) * CELLSIZE
					var _y2 = yy + (1 + weapon.details.range) * CELLSIZE
					if((mouse_x div CELLSIZE) == (xx div CELLSIZE) and (mouse_y div CELLSIZE) == (yy div CELLSIZE)) break
					if(targ != noone and mouse_x > _x1 and mouse_x < _x2 and mouse_y > _y1 and mouse_y < _y2)
					{
						if(hit(self, targ))
						{
							var dmg = weapon.details.damage(primStats)
							show_debug_message(name + " hits for " + string(dmg) + " points of damage")
							targ._health -= dmg
						}
						else
						{
							show_debug_message(name + " misses " + targ.name)
						}
						state = PC_STATE.IDLE
						oGame.flip_turn = true
						break;
					}
				}
			}
		}
	}
	case GAME_STATE.NPC_TURN:
	{
	}
}