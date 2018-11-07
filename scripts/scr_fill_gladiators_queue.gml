///gladiators

with (obj_gladiator) {
    if (turn_used) {
        ds_priority_add(argument0, id, spd + fight_bonuses.spd_bonus)
        turn_used = false
        moves_left = max_moves_per_turn
    }
}
