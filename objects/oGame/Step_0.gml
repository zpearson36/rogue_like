/// @description Insert description here
// You can write your code in this editor
switch state
{
	case GAME_STATE.PC_TURN:
	{
		if(flip_turn)
		{
			flip_turn = false
			state = GAME_STATE.NPC_TURN
		}
	}
	case GAME_STATE.NPC_TURN:
	{
		if(flip_turn)
		{
			flip_turn = false
			state = GAME_STATE.PC_TURN
		}
	}
}