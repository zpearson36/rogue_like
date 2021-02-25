function heuristic_cost(a, b)
{
	return abs(a[0] - b[0]) + abs(a[1] - b[1])
}

function heuristic_search(frontier, came_from, start, dest, map)
{
	var keep_going = true
	
	while !ds_priority_empty(frontier) and keep_going
	{
		current = ds_priority_find_min(frontier)
		ds_priority_delete_min(frontier)
		if(current[0] == dest[0] and current[1] == dest[1]) keep_going = false;
		else
		{
			for(var i = -1; i <= 1; i++)
			{
				for(var j = -1; j <= 1; j++)
				{
					if(i == 0 and j == 0) continue
					if(CARDINALONLY and not(i == 0 || j == 0)) continue
					var xx = current[0] + i
					var yy = current[1] + j
					if(xx < 0 or yy < 0 or xx >= MAPWIDTH or yy >=MAPHEIGHT) continue
					//if(map[xx][yy] == BARRIER) continue
					
					if(came_from[? pos(xx, yy)] == undefined)
					{
						priority = heuristic_cost(dest, [xx, yy])
						ds_map_add(came_from, pos(xx, yy), current)
						ds_priority_add(frontier, [xx, yy], priority)
					}
				}
			}
		}
	}
	return false
}

function pos(_x, _y)
{
	return _x * MAPHEIGHT + _y
}

function get_path(start, target, map)
{
	var frontier = ds_priority_create()
	ds_priority_add(frontier, start, 0)

	var came_from = ds_map_create()
	ds_map_add(came_from, pos(start[0], start[1]), "start!")
	
	var xx = target.xx div CELLSIZE
	var yy = target.yy div CELLSIZE
	var dest = [xx, yy]
	
	heuristic_search(frontier, came_from, start, dest, map)
	
	//ds_map_copy(path, came_from)
	
	var _x = dest[0]
	var _y = dest[1]
	var prev_x = undefined
	var prev_y = undefined
	if(came_from[? pos(_x, _y)] != undefined){
		while(came_from[? pos(_x, _y)] != "start!")
		{
			prev_x = _x
			prev_y = _y
			
			var tmp = came_from[? pos(_x, _y)]
			_x = tmp[0]
			_y = tmp[1]
		}
	}
	else dest = undefined
	return [prev_x, prev_y]
}

function hit(atk, def)
{
	def_roll = roll() + def.skills.modifier("dodge")
	atk_roll = roll() + atk.skills.modifier(atk.weapon.details.wType)
	return atk_roll > def_roll
}

function roll()
{
	// Rolling will be based on 1d10 scale, with modifiers in +/- .2 increments based on skill level
	return irandom_range(1, 10)
}