///scr_create_gladiator(gladiator_data, x, y)

xx = argument1
yy = argument2

gladiator_data = argument0

race = ds_map_find_value(gladiator_data, "race")

gladiator = noone

if (race == "borssy") {
    gladiator = instance_create(xx, yy, obj_borssy)
} else if (race == "jotain") {
    //other races
}

gladiator.name = ds_map_find_value(gladiator_data, "name")
gladiator.weapon = scr_create_weapon(ds_map_find_value(gladiator_data, "weapon"))
gladiator.max_hp = ds_map_find_value(gladiator_data, "max_hp")
gladiator.max_mana = ds_map_find_value(gladiator_data, "max_mana")
gladiator.strength = ds_map_find_value(gladiator_data, "strength")
gladiator.spell_power = ds_map_find_value(gladiator_data, "spell_power")
gladiator.spd = ds_map_find_value(gladiator_data, "spd")

return gladiator
