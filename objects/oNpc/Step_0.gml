/// @description Insert description here
// You can write your code in this editor
switch oGame.state
{
	case GAME_STATE.NPC_TURN:
	{
		if(target != undefined)
		{
			if(point_distance(x, y, target.xx, target.yy) <= weapon.details.range * CELLSIZE)
			{
				target._health -= weapon.details.damage
				oGame.flip_turn = true
				break;
			}
			else
			{
				var next = get_path(start, target, oGame.map)
				var dir = undefined
				if start[0] - next[0] > 0 dir = LEFT
				if start[0] - next[0] < 0 dir = RIGHT
				if start[1] - next[1] > 0 dir = UP
				if start[1] - next[1] < 0 dir = DOWN
			}
			
		}
		else var dir = choose(UP, DOWN, LEFT, RIGHT)
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
				if( x + CELLSIZE < room_width)
				{
					x += CELLSIZE
					oGame.flip_turn = true
					break;
				}
			}
			case undefined:
			{
				break;
			}
		}
	}
	case GAME_STATE.PC_TURN:
	{
	}
}