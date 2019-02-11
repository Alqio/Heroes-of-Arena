///scr_recruit_gladiator
if (global.selected == noone) return 0

var c = scr_calculate_gladiator_cost(global.selected)

with (obj_drafter2) {
    if (c <= global.gold && ds_list_find_index(team, global.selected) == -1) {
        ds_list_add(team, global.selected)
        global.gold -= c
        ds_list_delete(gladiators, global.selected)
        team_pos_x = room_width - 33 * ds_list_size(team) - 64
        
        for (var j = 0; j < ds_list_size(team); j++) {
            g = ds_list_find_value(team, j)
            g.x = team_pos_x + 33*j
        }
        
    }
    
}
