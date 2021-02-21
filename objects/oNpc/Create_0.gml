/// @description Insert description here
// You can write your code in this editor
_health = 10
x = (x div CELLSIZE) * CELLSIZE
y = (y div CELLSIZE) * CELLSIZE
//xx = ((200) div CELLSIZE) * CELLSIZE
//yy = ((200) div CELLSIZE) * CELLSIZE
weapon_states = []
array_push(weapon_states, new weaponDetails("Boobs", 1, 1))
array_push(weapon_states, new weaponDetails("Butts", 2, 10))
array_push(weapon_states, new weaponDetails("Bepis", 3, 100))
weapon = instance_create_layer(x, y, layer, oWeapon)
current_weapon_state = 0
weapon.details = weapon_states[current_weapon_state]
sprite = sNpc
target = undefined
dest   = undefined
