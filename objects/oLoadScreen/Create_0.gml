/// @description Insert description here
// You can write your code in this editor
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;

menu_x = gui_width - gui_margin
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;
menu_itemheight = font_get_size(fMainMenu);

menu[0] = instance_create_layer(menu_x - 150, menu_y - menu_itemheight * (0 * 1.5), layer, oMainMenuButton)
menu[0].txt = "Back"
menu[0].action = function(){room_goto(rMainMenu)}

saveFiles = []
var i = 0;
var fileName = file_find_first(working_directory + "*.save",fa_directory);

while(fileName != "")
{
	var selection = instance_create_layer(50, 50 + 100 * i, layer, oSaveSelector)
	selection.fileName = fileName
    fArray[i] = selection;
    fileName = file_find_next();
    i += 1;
}