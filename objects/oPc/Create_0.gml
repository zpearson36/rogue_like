/// @description Insert description here
// You can write your code in this editor
name = "PC character"
_health = 10
primStats = new primaryStats(10, 10, 10, 10)
skills = new skillStats()
skills.skillVal[? "dodge"] = 15
skills.skillVal[? "spear"] = 25
state = PC_STATE.IDLE
xx = (x div CELLSIZE) * CELLSIZE
yy = (y div CELLSIZE) * CELLSIZE
weapon_states = []
array_push(weapon_states, oGame.weaponsMap[? "Spear"])
/*array_push(weapon_states, new weaponDetails("Butts", 2, 10))
array_push(weapon_states, new weaponDetails("Bepis", 3, 100))*/
weapon = instance_create_layer(x, y, layer, oWeapon)
current_weapon_state = 0
weapon.details = weapon_states[current_weapon_state]
sprite = sPc
target = undefined