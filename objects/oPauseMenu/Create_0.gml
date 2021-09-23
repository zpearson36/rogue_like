/// @description Insert description here
// You can write your code in this editor

menu_buttons = []
cam = view_camera[0]
/*gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 100;

menu_x = gui_width - gui_margin
menu_y = gui_height - gui_margin;
menu_x_target = gui_width - gui_margin;*/
menu_speed = 25;
menu_font = fMainMenu;
menu_itemheight = font_get_size(fMainMenu);
menu_committed = -1;
menu_control = true;

menu_buttons[0] = instance_create_depth(325, 225 - menu_itemheight * (-2 * 1.5), -15000, oMainMenuButton)
menu_buttons[0].bb_x_offset = camera_get_view_x(cam)
menu_buttons[0].bb_y_offset = camera_get_view_y(cam)
menu_buttons[0].update_bb = true
menu_buttons[1] = instance_create_depth(325, 225 - menu_itemheight * (-1 * 1.5), -15000, oMainMenuButton)
menu_buttons[2] = instance_create_depth(325, 225 - menu_itemheight * (0 * 1.5) , -15000, oMainMenuButton)

menu_buttons[2].txt = "Save"
menu_buttons[1].txt = "Load Game"
menu_buttons[0].txt = "Quit"

menu_buttons[0].action = function(){game_end()}
menu_buttons[1].action = function(){room_goto(rLoadScreen)}
menu_buttons[2].action = function(){save_game()}

menu_items = array_length_1d(menu_buttons)
menu_cursor = 2