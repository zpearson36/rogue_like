/// @description Insert description here
// You can write your code in this editor
//p_menu = undefined
if(state != GAME_STATE.PAUSE)
{
	if(instance_exists(oPauseMenu)){p_menu = undefined; instance_destroy(oPauseMenu)}
	if(!instance_exists(oPc))
	{
		state = GAME_STATE.NPC_TURN
	}
	if(!instance_exists(oNpc))
	{
		state = GAME_STATE.PC_TURN
	}
	if(keyboard_check_pressed(vk_escape))
	{
		prev_state = state
		state = GAME_STATE.PAUSE
		can_pause = false
		alarm[0] = 15
	}
}
else
{
	if(p_menu == undefined)
	{
		p_menu = instance_create_layer(x, y, layer, oPauseMenu)
		show_debug_message("fff")
	}
	if(keyboard_check_pressed(vk_escape) and can_pause)
	{
		state = prev_state
		can_pause = false
		alarm[0] = 15
	}
}