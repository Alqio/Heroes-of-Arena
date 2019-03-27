///scr_save_gladiator(gladiator)
gladiator = argument0

gladiator_data = ds_map_create()

for (var i = 0; i < gladiator.nof_saveable_variables; i++) {
    var tuple = ds_list_find_value(gladiator.saveable_variables, i)
    var var_name = tuple[1]
    if (var_name == "weapon") {
         ds_map_add(gladiator_data, var_name, ref_get(ds_list_find_value(gladiator.saveable_variables, i)).name)
    } else {
         ds_map_add(gladiator_data, var_name, ref_get(ds_list_find_value(gladiator.saveable_variables, i)))
    }
}

/*
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
*/

return gladiator_data
