///scr_level_gladiator(gladiator)
gladiator = argument0

if (random(1.0) < gladiator.hp_growth) gladiator.max_hp++
if (random(1.0) < gladiator.str_growth) gladiator.strength++
if (random(1.0) < gladiator.mana_growth) gladiator.max_mana++
if (random(1.0) < gladiator.spd_growth) gladiator.spd++
if (random(1.0) < gladiator.spell_power_growth) gladiator.spell_power++

gladiator.expirience = 0
gladiator.level ++
