

// Get the tile layer map id
//var wallMapID = layer_tilemap_get_id("WallTiles")
show_debug_message("1")
// Set up grid
width = MAPWIDTH
height = MAPHEIGHT
grid = []//ds_grid_create(width, height)
for(var i = 0; i < width; i++)
{
	for(var j = 0; j < height; j++)
	{
		grid[i][j] = VOID
	}
}
//ds_grid_set_region(grid, 0, 0, width, height, VOID)

// Create Controller
var controller_x = width div 2
var controller_y = height div 2
var controller_direction = irandom(3)
var steps = 400
show_debug_message("2")
var direction_change_odds = 1
repeat (steps)
{
	grid[controller_x][controller_y] = FLOOR
	
	// Randomize direction
	if(irandom(direction_change_odds) == direction_change_odds)
	{
		controller_direction = irandom(3)
	}
	
	// Move the controller
	var x_direction = lengthdir_x(1, controller_direction * 90)
	var y_direction = lengthdir_y(1, controller_direction * 90)
	controller_x += x_direction
	controller_y += y_direction
	
	// Make sure we dont go outside the grid
	if(controller_x < 2 || controller_x >= width - 2)
	{
		controller_x += -x_direction * 2
	}
	if(controller_y < 2 || controller_y >= height - 2)
	{
		controller_y += -y_direction * 2
	}
}
show_debug_message("3")
// Create NPCs
repeat(3)
{
	var xx = irandom(room_width)
	var yy = irandom(room_height)
	var attempts = 5
	while(grid[xx div CELLSIZE][yy div CELLSIZE] != FLOOR and attempts > 0)
	{
		xx = irandom(room_width)
		yy = irandom(room_height)
		attempts --
	}
	if attempts > 0 instance_create_layer(xx, yy, layer, oNpc)
}
show_debug_message("4")
function save()
{
	var _saveEntity =
	{
		obj: object_get_name(object_index),
		_grid: grid
		
	}
	return _saveEntity
}

function load(obj)
{
	grid = obj._grid
}