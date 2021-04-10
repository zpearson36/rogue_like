/// @description Insert description here
// You can write your code in this editor
cam = view_camera[0]
cam_x = camera_get_view_x(cam)
cam_y = camera_get_view_y(cam)
cam_h = camera_get_view_height(view_camera[0])
cam_w = camera_get_view_width(view_camera[0])
//if(cam_x + cam_w > room_width)  camera_set_view_pos(cam, room_width - cam_w, cam_y)
//if(cam_y + cam_h > room_height) camera_set_view_pos(cam, cam_x, room_height - cam_h)
/*
if(keyboard_check(ord("W"))) camera_set_view_pos(cam, cam_x, max(0, cam_y - 16))
if(keyboard_check(ord("S"))) camera_set_view_pos(cam, cam_x, min(room_height - cam_h, cam_y + 16))
if(keyboard_check(ord("A"))) camera_set_view_pos(cam, max(0, cam_x - 16), cam_y)
if(keyboard_check(ord("D"))) camera_set_view_pos(cam, min(room_width - cam_w, cam_x + 16), cam_y)
*/

//zoom functionality. if scroll down zoom out
//if scroll up zoom in
if(mouse_wheel_down()){
	cam_width = min(cam_w + 256, room_width)
	cam_height = (768 / 1344) * cam_width
	camera_set_view_size(view_camera[0], cam_width, cam_height)
}else if(mouse_wheel_up()){
	//audio_play_sound_at()
	cam_w = camera_get_view_width(view_camera[0])
	cam_width = max(512,cam_w - 256)
	cam_height = (768 / 1344) * cam_width
	camera_set_view_size(view_camera[0], cam_width, cam_height)
}