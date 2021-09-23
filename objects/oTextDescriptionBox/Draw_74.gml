/// @description Insert description here
// You can write your code in this editor
bk_grnd = c_ltgray
brdr = c_dkgrey
draw_rectangle_color(50, cam_h - 250, 450, cam_h - 50, bk_grnd, bk_grnd, bk_grnd, bk_grnd, false)
draw_rectangle_color(50, cam_h - 250, 450, cam_h - 50, brdr, brdr, brdr, brdr, true)
draw_set_font(fDisplay)
for(var i = 0; i < min(9,array_length(txt_array)); i++)
{
	draw_text_color(60,
	    cam_h - 240 + 20*(8 - i),
		txt_array[array_length(txt_array) - 1 - i],
		c_black, c_black, c_black, c_black, 1)
}