/// @description Insert description here
// You can write your code in this editor
name = "PC character"
_health = 10
primStats = new primaryStats(10, 10, 10, 10)
skills = new skillStats()
state = PC_STATE.IDLE
xx = (x div CELLSIZE) * CELLSIZE
yy = (y div CELLSIZE) * CELLSIZE
weapon_states = []
array_push(weapon_states, oGame.weaponsMap[? "Spear"])
weapon = instance_create_layer(x, y, layer, oWeapon)
current_weapon_state = 0
weapon.details = weapon_states[current_weapon_state]
sprite = sPc
target = undefined