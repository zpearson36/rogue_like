/// @description Insert description here
// You can write your code in this editor
draw_sprite(sprite, -1, xx, yy)
switch(state)
{
	case PC_STATE.ATTACKING:
	{
		for(var i = -weapon.details.range; i <= weapon.details.range; i++)
		{
			for(var j = -weapon.details.range; j <= weapon.details.range; j++)
			{
				if(i == 0 and j == 0) continue
				draw_set_alpha(.4)
				
				var _x1 = xx + (i * CELLSIZE)
				var _y1 = yy + (j * CELLSIZE)
				var _x2 = _x1 + CELLSIZE
				var _y2 = _y1 + CELLSIZE
				c_color = c_aqua
				if(mouse_x > _x1 and mouse_y > _y1
				   and mouse_x < _x2 and mouse_y < _y2) c_color = c_yellow
				draw_rectangle_color(_x1, _y1, _x2, _y2, c_color, c_color, c_color, c_color, false)
				draw_set_alpha(1)
			}
		}
	}
}