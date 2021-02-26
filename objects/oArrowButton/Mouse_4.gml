/// @description Insert description here
// You can write your code in this editor
subimg = 1
if(menu.available_points - inc_amnt >= 0 and menu.available_points - inc_amnt <= menu.max_points)
{
	menu.available_points -= inc_amnt
	menu.stats[? stat] += inc_amnt
	show_debug_message(inc_amnt)
}