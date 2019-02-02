///scr_recruit_gladiator
if (global.selected == noone) return 0

var c = scr_calculate_gladiator_cost(global.selected)

with (obj_drafter2) {
    if (c <= global.gold && ds_list_find_index(team, global.selected) == -1) {
        ds_list_add(team, global.selected)
        global.gold -= c
    }
    
}
