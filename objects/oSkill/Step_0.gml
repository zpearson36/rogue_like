/// @description Insert description here
// You can write your code in this editor
if(init and menu != undefined)
{
	switch(menu.skillLevels[? txt])
	{
		case MAJOR_SKILL.NO:
		{
			c_color = c_ltgray
			break;
		}
		case MAJOR_SKILL.MAJOR:
		{
			c_color = c_maroon
			break;
		}
		case MAJOR_SKILL.MINOR:
		{
			c_color = c_navy
			break;
		}
	}
	init = false
}