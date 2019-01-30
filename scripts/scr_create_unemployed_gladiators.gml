///scr_create_unemployed_gladiators(amount)

amount = argument0

gladiators = ds_list_create()

repeat(amount) {
    race = ds_list_find_value(global.races, irandom(global.nOfRaces))
    
    race = "borssy"
    
    gladiator = noone
    if (race == "borssy") {
        gladiator = instance_create(0,0, obj_borssy)
    }
    
    gladiator_data = ds_map_create()

    gladiator.spd *= random_range(0.6, 1.4)
    gladiator.max_hp *= random_range(0.8, 1.2)
    gladiator.strength *= random_range(0.6, 1.4)
    gladiator.spell_power *= random_range(0.6, 1.4)
    gladiator.max_mana *= random_range(0.9, 1.1)
    
    rand = irandom(100)
    
    if (rand < 50) 
        level = irandom(3) + 1
    else if (rand >= 50 && rand < 80)
        level = irandom_range(3, 8)
    else if (rand >= 80)
        level = irandom_range(8, 12)
    
    repeat(level) {
        scr_level_gladiator(gladiator)
    }
    
    gladiator.experience = irandom(gladiator.expirience_needed)
    
    ds_map_add(gladiator_data, "name", gladiator.name)
    ds_map_add(gladiator_data, "weapon", "Fists")
    ds_map_add(gladiator_data, "max_hp", gladiator.max_hp)
    ds_map_add(gladiator_data, "max_mana", gladiator.max_mana)
    ds_map_add(gladiator_data, "strength", gladiator.strength)
    ds_map_add(gladiator_data, "spell_power", gladiator.spell_power)
    ds_map_add(gladiator_data, "spd", gladiator.spd)
    ds_map_add(gladiator_data, "race", gladiator.race)
    ds_map_add(gladiator_data, "level", gladiator. level)
    ds_map_add(gladiator_data, "expirience", gladiator.expirience)
    
    instance_destroy(gladiator)
    
    ds_list_add(gladiators, gladiator_data)
    
}
return gladiators
