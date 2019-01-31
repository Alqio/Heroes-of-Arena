///scr_gain_experience(gladiator, amount)
gladiator = argument0 
amount = argument1

gladiator.experience += amount
while (gladiator.experience >= gladiator.experience_needed) {
    gladiator.experience -= gladiator.experience_needed
    scr_level_gladiator(gladiator)
}
