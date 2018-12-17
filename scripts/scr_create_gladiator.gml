///scr_create_gladiator(index, x, y)

index = argument0
xx = argument1
yy = argument2

gladiator_data = ds_list_find_value(global.gladiators, index)

race = ds_map_find_value(gladiator_data, "race")

gladiator = noone

if (race == "borssy") {
    gladiator = instance_create(xx, yy, obj_gladiator)
} else if (race == "jotain") {
    //other races
}

//gladiator.name = gladiator_data.name
gladiator.weapon = ds_map_find_value(gladiator_data, "weapon")
//TODO all other stats

return gladiator
