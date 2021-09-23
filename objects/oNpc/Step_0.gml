/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oPc))
{
	target = undefined
}
switch oGame.state
{
	case GAME_STATE.NPC_TURN:
	{
		if(target != undefined)
		{
			if(point_distance(x, y, target.xx, target.yy) <= weapon.range * CELLSIZE * sqrt(2))
			{
				if(hit(self, target))
				{
					var dmg = weapon.damage(primStats)
					oCamera.txt_box.add_text(name + " hits " + target.name + " for " + string(dmg) + " points of damage with " + weapon.name)
					//show_debug_message(name + " hits for " + string(dmg) + " points of damage")
					target._health -= dmg
				}
				else
				{
					oCamera.txt_box.add_text(name + " misses " + target.name)
					//show_debug_message(name + " misses " + target.name)
				}
				oGame.flip_turn = true
				break;
			}
			else
			{
				var next = get_path(start, target, oGame.dungeon_room.grid)
				var dir = undefined
				var collision_left  = collision_rectangle(x - CELLSIZE, y,            x - 1,                  y + CELLSIZE - 1, oNpc, false, true)
				var collision_right = collision_rectangle(x + CELLSIZE, y,            x + (2 * CELLSIZE) - 1, y + CELLSIZE - 1, oNpc, false, true)
				var collision_up    = collision_rectangle(x,            y - CELLSIZE, x + CELLSIZE - 1,       y - 1, oNpc, false, true)
				var collision_down  = collision_rectangle(x,            y + CELLSIZE, x + CELLSIZE - 1,       y + (2 * CELLSIZE) - 1, oNpc, false, true)
				if(      (start[0] - next[0] > 0) and (oGame.dungeon_room.grid[(x div CELLSIZE) - 1][y div CELLSIZE] == FLOOR) and not collision_left)  dir = LEFT
				else if ((start[0] - next[0] < 0) and (oGame.dungeon_room.grid[(x div CELLSIZE) + 1][y div CELLSIZE] == FLOOR) and not collision_right) dir = RIGHT
				else if ((start[1] - next[1] > 0) and (oGame.dungeon_room.grid[x div CELLSIZE][(y div CELLSIZE) - 1] == FLOOR) and not collision_up)    dir = UP
				else if ((start[1] - next[1] < 0) and (oGame.dungeon_room.grid[x div CELLSIZE][(y div CELLSIZE) + 1] == FLOOR) and not collision_down ) dir = DOWN
			}
			
		}
		else if(instance_exists(oPc))
		{
			target = instance_find(oPc, 0)
			break;
		}
		else
		{
			var dir = choose(UP, DOWN, LEFT, RIGHT)
		}
		switch dir
		{
			case UP:
			{
				if( y - CELLSIZE >= 0)
				{
					y -= CELLSIZE
					oGame.flip_turn = true
					break;
				}
			}
			case DOWN:
			{
				if( y + CELLSIZE < room_height)
				{
					y += CELLSIZE
					oGame.flip_turn = true
					break;
				}
			}
			case LEFT:
			{
				if( x - CELLSIZE >= 0)
				{
					x -= CELLSIZE
					oGame.flip_turn = true
					break;
				}
			}
			case RIGHT:
			{
				if(x + CELLSIZE < room_width)
				{
					x += CELLSIZE
					oGame.flip_turn = true
					break;
				}
			}
			case undefined:
			{
				oGame.flip_turn = true
				break;
			}
		}
	}
	case GAME_STATE.PC_TURN:
	{
	}
}