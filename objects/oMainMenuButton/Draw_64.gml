/// @description Insert description here
// You can write your code in this editor
var offset = 2
draw_set_color(c_black)
draw_text(x-offset, y, txt)
draw_text(x+offset, y, txt)
draw_text(x, y+offset, txt)
draw_text(x, y-offset, txt)
draw_set_color(col)
draw_text(x,y,txt)

//draw_text( 150, y, txt+ ": " + string(x) + ", " + string(y))