///scr_gladiator_attack_bonuses(gladiator, type)
g = argument0
type = argument1

fight_bonuses = g.fight_bonuses

bonus = 0

for (var i = 0; i < ds_list_size(fight_bonuses); i++) {
    var fight_bonus = ds_list_find_index(fight_bonuses, i);
    
    if (type == "damage") {
        bonus += fight_bonus.damage
    }
    if (type == "defense") {
        bonus += fight_bonus.defense
    }
    if (type == "speed" || type == "spd") {
        bonus += fight_bonus.spd
    } 
}

return bonus
