
cam = view_camera[0]
draw_set_color(c_gray)
draw_rectangle(300, 200, camera_get_view_width(cam) - 300, camera_get_view_height(cam) - 200, false)
draw_set_color(c_white)