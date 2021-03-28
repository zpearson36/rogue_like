/// @description Insert description here
// You can write your code in this editor
prev_y = y
item = undefined
width = 700
height = 150
c_fill = c_dkgray
c_outline = c_ltgray
c_text = c_white
state = INV_STATES.IDLE
upper_boundary = 60
lower_boundary = 680
owner = false
action_list = []

enum INV_STATES
{
	IDLE = 0,
	HOVER = 1,
	SELECTED = 2,
	HIDDEN = 3
}