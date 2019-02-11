///scr_save_gladiator(gladiator)
g = argument0

gladiator = ds_map_create()
ds_map_add(gladiator, "race", g.race)
ds_map_add(gladiator, "name", g.name)
ds_map_add(gladiator, "weapon", g.weapon.name)
ds_map_add(gladiator, "spd", g.spd)
ds_map_add(gladiator, "max_hp", g.max_hp)
ds_map_add(gladiator, "strength", g.strength)
ds_map_add(gladiator, "spell_power", g.spell_power)
ds_map_add(gladiator, "max_mana", g.max_mana)
ds_map_add(gladiator, "experience", g.experience)
ds_map_add(gladiator, "level", g.level)
ds_map_add(gladiator, "wage", g.wage)
ds_map_add(gladiator, "age", g.age)

return gladiator
