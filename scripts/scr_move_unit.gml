///scr_move_unit(unit, dir)

unit = argument0
dir = argument1

x_step = 0
y_step = 0
xx = unit.x
yy = unit.y

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
        inst = instance_place(new_x, new_y, obj_gladiator)

        if (inst == noone) {
            unit.x += x_step
            unit.y += y_step
        } else if (inst.side == unit.side) {
            show_message(inst.name)
            inst.x = unit.x
            inst.y = unit.y
            unit.x = new_x
            unit.y = new_y
        } else {
            //attack?
        }
    }

}

