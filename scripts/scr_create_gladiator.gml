///scr_create_gladiator(gladiator_data, x, y)

xx = argument1
yy = argument2

gladiator_data = argument0
show_debug_message(argument0)

race = ds_map_find_value(gladiator_data, "race")

gladiator = noone

if (race == "borssy") {
    gladiator = instance_create(xx, yy, obj_borssy)
} else if (race == "jotain") {
    //other races
}

for (var i = 0; i < gladiator.nof_saveable_variables; i++) {
    //ds_map_add(gladiator_data, gladiator.saveable_variables[i][1], ref_get(gladiator, gladiator.saveable_variables[i]))
    var tuple = ds_list_find_value(gladiator.saveable_variables, i)
    var var_name = tuple[1]
    //ref_set(gladiator.saveable_variables[i], ds_map_find_value(gladiator_data, var_name))
    ref_set(ds_list_find_value(gladiator.saveable_variables, i), ds_map_find_value(gladiator_data, var_name))
}

/*
gladiator.name = ds_map_find_value(gladiator_data, "name")
gladiator.max_hp = ds_map_find_value(gladiator_data, "max_hp")
gladiator.max_mana = ds_map_find_value(gladiator_data, "max_mana")
gladiator.strength = ds_map_find_value(gladiator_data, "strength")
gladiator.spell_power = ds_map_find_value(gladiator_data, "spell_power")
gladiator.spd = ds_map_find_value(gladiator_data, "spd")
gladiator.level = ds_map_find_value(gladiator_data, "level")
gladiator.experience = ds_map_find_value(gladiator_data, "experience")
gladiator.wage = ds_map_find_value(gladiator_data, "wage")
gladiator.age = ds_map_find_value(gladiator_data, "age")
*/
gladiator.weapon = scr_create_weapon(gladiator.weapon)
gladiator.hp = gladiator.max_hp
gladiator.mana = gladiator.max_mana

return gladiator
