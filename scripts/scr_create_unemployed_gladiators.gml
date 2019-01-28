///scr_create_unemployed_gladiators(amount)

amount = argument0

gladiators = ds_list_create()

repeat(amount) {
    race = ds_list_find_value(global.races, irandom(global.nOfRaces))
    show_debug_message(race)
    
    race = "borssy"
    
    gladiator = noone
    if (race == "borssy") {
        gladiator = instance_create(0,0, obj_borssy)
    }
    
    gladiator_data = ds_map_create()
    
    //todo ds_list_add näille
    name = gladiator.name
    weapon = "Fists"
    spd = gladiator.spd * random_range(0.6, 1.4)
    max_hp = gladiator.max_hp * random_range(0.8, 1.2)
    strength = gladiator.strength * random_range(0.6, 1.4)
    spell_power = gladiator.spell_power * random_range(0.6, 1.4)
    max_mana = gladiator.max_mana * random_range(0.9, 1.1)
    
    ds_map_add(gladiator_data, "name", name)
    ds_map_add(gladiator_data, "weapon", "Fists")
    ds_map_add(gladiator_data, "max_hp", max_hp)
    ds_map_add(gladiator_data, "max_mana", max_mana)
    ds_map_add(gladiator_data, "strength", strength)
    ds_map_add(gladiator_data, "spell_power", spell_power)
    ds_map_add(gladiator_data, "spd", spd)
    ds_map_add(gladiator_data, "race", race)
    
    instance_destroy(gladiator)
    
    ds_list_add(gladiators, gladiator_data)
    
}
return gladiators
