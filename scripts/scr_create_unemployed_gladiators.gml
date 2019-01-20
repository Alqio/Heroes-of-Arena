///scr_create_unemployed_gladiators(amount)

amount = argument0

repeat(amount) {
    race = ds_list_find_value(global.races, irandom(global.nOfRaces))
    
    gladiator = noone
    if (race == "borssy") instance_create(0,0, obj_borssy)
    
    name = gladiator.name
    weapon = "Fists"
    spd = gladiator.spd * random_range(0.6, 1.4)
    max_hp = gladiator.max_hp * random_range(0.8, 1.2)
    strength = gladiator.strength * random_range(0.6, 1.4)
    spell_power = gladiator.spell_power * random_range(0.6, 1.4)
    max_mana = gladiator.max_mana * random_range(0.9, 1.1)
}
