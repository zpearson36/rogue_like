/// @description Insert description here
// You can write your code in this editor
//show_debug_message(primStats)
draw_set_color(c_red)
/*
draw_text(50,  50, "STRENGTH:     " + string(primStats.get("strength")))
draw_text(50,  75, "DEXTERITY:    " + string(primStats.dexterity))
draw_text(50, 100, "INTELLIGENCE: " + string(primStats.intelligence))
draw_text(50, 125, "ENDURANCE:    " + string(primStats.endurance))
draw_text(50, 150, "damage:       " + string(weapon.damage(primStats)))
draw_text(50, 175, "weapon:       " + string(weapon.damageScale[? "strength"]))
*/

if(array_length(inventory.contents) > 0)
{
	for(var i = 0; i < array_length(inventory.contents); i++)
	{
		draw_text(50, 50 + 25*i, inventory.contents[i].name)
	}
}
else
{
	draw_text(50, 50, "Inventory is Empty")
}
draw_set_color(c_white)