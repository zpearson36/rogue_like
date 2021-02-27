/// @description Insert description here
// You can write your code in this editor
subimg = 1


if((inc_amnt > 0 and menu.available_points > 0)
    or (inc_amnt < 0 and menu.available_points < menu.max_points and menu.stats[? stat] + inc_amnt > 0))
{
	menu.available_points -= inc_amnt
	menu.stats[? stat] += inc_amnt
}