///attacker, attackee

//TODO: armors

attacker = argument0
attackee = argument1

scr_log_command(string(attacker.name) + " attacks " + string(attackee.name))

dmg = max(0, (attacker.weapon.damage + attacker.fight_bonuses.damage) - 
             (attackee.defense + attackee.fight_bonuses.defense))

attackee.hp -= dmg

scr_log_command(attacker.name + " deals " + string(dmg) + " damage")

if (attackee.hp <= 0) {
    scr_kill_gladiator(attackee)
} else if (attackee.can_retaliate){
    dmg = max(0, (attackee.weapon.damage + attackee.fight_bonuses.damage) - 
             (attacker.defense + attacker.fight_bonuses.defense))
    
    attacker.hp -= dmg
    
    scr_log_command(attackee.name + " retaliates for " + string(dmg) + " damage")
    
    if (attacker.hp <= 0) {
        scr_kill_gladiator(attacker)
    }
}




