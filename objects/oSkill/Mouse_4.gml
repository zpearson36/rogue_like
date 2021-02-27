/// @description Insert description here
// You can write your code in this editor
switch(menu.skillLevels[? txt])
{
	case MAJOR_SKILL.NO:
	{
		if(menu.major_skills_available > 0)
		{
			menu.skillLevels[? txt] = MAJOR_SKILL.MAJOR
			c_color = c_maroon
			menu.major_skills_available -= 1
		}
		else if(menu.minor_skills_available > 0)
		{
			menu.skillLevels[? txt] = MAJOR_SKILL.MINOR
			c_color = c_navy
			menu.minor_skills_available -= 1
		}
		break;
	}
	case MAJOR_SKILL.MAJOR:
	{
		if(menu.minor_skills_available > 0)
		{
			menu.skillLevels[? txt] = MAJOR_SKILL.MINOR
			c_color = c_navy
			menu.minor_skills_available -= 1
			menu.major_skills_available += 1
		}
		else
		{
			menu.skillLevels[? txt] = MAJOR_SKILL.NO
			c_color = c_ltgray
			menu.major_skills_available += 1
		}
		break;
	}
	case MAJOR_SKILL.MINOR:
	{
		menu.skillLevels[? txt] = MAJOR_SKILL.NO
		c_color = c_ltgray
		menu.minor_skills_available += 1
		break;
	}
}