///attacker, attackee

//TODO: armors

attacker = argument0
attackee = argument1

scr_log_command(string(attacker.name) + " attacks " + string(attackee.name))

dmg = max(0, (attacker.weapon.damage + scr_gladiator_fight_bonuses(attacker, "damage")) - 
             (attackee.defense + scr_gladiator_fight_bonuses(attackee, "defense")))

attackee.hp -= dmg
scr_gain_experience(attacker, 5)

scr_log_command(attacker.name + " deals " + string(dmg) + " damage")

if (attackee.hp <= 0) {
    scr_gain_experience(attacker, attackee.level + 10)
    scr_kill_gladiator(attackee)
} else if (attackee.can_retaliate) {
    dmg = max(0, (attackee.weapon.damage + scr_gladiator_fight_bonuses(attackee, "damage")) - 
             (attacker.defense + scr_gladiator_fight_bonuses(attacker, "defense")))
    
    attacker.hp -= dmg
    scr_gain_experience(attackee, 2)
    
    scr_log_command(attackee.name + " retaliates for " + string(dmg) + " damage")
    
    if (attacker.hp <= 0) {
        scr_gain_experience(attackee, attacker.level + 10)
        scr_kill_gladiator(attacker)
    }
}

