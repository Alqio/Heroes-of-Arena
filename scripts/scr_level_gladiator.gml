///scr_level_gladiator(gladiator)
gladiator = argument0

stat_growth = 0

if (random(1.0) < gladiator.hp_growth) {gladiator.max_hp++; stat_growth++}
if (random(1.0) < gladiator.str_growth) {gladiator.strength++; stat_growth++}
if (random(1.0) < gladiator.mana_growth) {gladiator.max_mana++; stat_growth++}
if (random(1.0) < gladiator.spd_growth) {gladiator.spd++; stat_growth++}
if (random(1.0) < gladiator.spell_power_growth) {gladiator.spell_power++; stat_growth++}

gladiator.experience = 0
gladiator.level ++

gladiator.wage = power(gladiator.wage, 1 + stat_growth/50)

scr_log_command(gladiator.name + " leveled up!")
