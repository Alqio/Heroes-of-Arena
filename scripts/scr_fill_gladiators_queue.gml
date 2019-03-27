///gladiators

with (obj_gladiator) {
    if (turn_used) {
        ds_priority_add(argument0, id, spd + scr_gladiator_fight_bonuses(self, spd))
        turn_used = false
        moves_left = max_moves_per_turn
    }
}
