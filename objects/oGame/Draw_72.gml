/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
c_color = c_white
for(var i = 0; i < MAPHEIGHT; i++)
{
	for(var j = 0; j < MAPWIDTH; j++)
	{
		switch dungeon_room.grid[j][i]
		{
			case FLOOR:
			{
				c_color = c_white
				break;
			}
			case WALL:
			{
				c_color = c_blue
				break;
			}
			default:
			{
				c_color = c_black
				break;
			}
		}
		var xx = j * CELLSIZE
		var yy = i * CELLSIZE
		draw_rectangle_color(xx, yy, xx + CELLSIZE, yy + CELLSIZE, c_color, c_color, c_color, c_color, false)
	}
}
c_color = c_white