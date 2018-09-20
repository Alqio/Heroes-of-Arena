///gladiators

with (obj_gladiator) {
    if (turn_used) {
        ds_priority_add(argument0, id, spd)
        turn_used = false
    }
}
