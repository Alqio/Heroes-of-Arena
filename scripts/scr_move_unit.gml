///scr_move_unit(unit, dir)

unit = argument0
dir = argument1

x_step = 0
y_step = 0

if (dir == NORTH) {
    y_step = -GRID_SIZE
} else if (dir == NORTH_EAST) {
    y_step = -GRID_SIZE
    x_step = GRID_SIZE
} else if (dir == EAST) {
    x_step = GRID_SIZE
} else if (dir == SOUTH_EAST) {
    y_step = GRID_SIZE
    x_step = GRID_SIZE
} else if (dir == SOUTH) {
    y_step = GRID_SIZE
} else if (dir == SOUTH_WEST) {
    y_step = GRID_SIZE
    x_step = -GRID_SIZE
} else if (dir == WEST) {
    x_step = -GRID_SIZE
} else if (dir == NORTH_WEST) {
    y_step = -GRID_SIZE
    x_step = -GRID_SIZE
}

if (x_step == 0 && y_step == 0) {
    //def + 1
} else {
    new_x = unit.x + x_step
    new_y = unit.y + y_step

    if (place_free(new_x, new_y)) {
        inst = instance_position(new_x, new_y, obj_gladiator)
        
        if (inst != noone && inst.id == unit.id) 
            inst = noone
        
        if (inst == noone) {
            unit.x += x_step
            unit.y += y_step
        } else if (inst.side == unit.side) {
            script_execute(scr_swap_gladiator_places, inst, unit)
        } else {
            //attack?
        }
    }

}

unit.moves_left -= 1
if (unit.moves_left = 0) {
    unit.turn_used = true
}


