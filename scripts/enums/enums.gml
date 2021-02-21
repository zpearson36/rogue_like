function weaponDetails(_name, _range, _damage) constructor
{
	name = _name
	range = _range
	damage = _damage
}

enum PC_STATE
{
	IDLE = 0,
	ATTACKING = 1,
	CASTING = 2,
}

enum GAME_STATE
{
	PC_TURN = 0,
	NPC_TURN = 1
}