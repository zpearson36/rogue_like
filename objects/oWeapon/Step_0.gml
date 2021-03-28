/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
switch state
{
	case WPN_STATES.IDLE:
	{
		break;
	}
	case WPN_STATES.EQUIP:
	{
		equip()
		state = WPN_STATES.IDLE
		break;
	}
}