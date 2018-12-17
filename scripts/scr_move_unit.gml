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

    collision = instance_position(new_x, new_y, all)
    
    //collided with terrain, moving failed
    if (collision != noone && collision.solid) {
        scr_log_command("Moving failed, blocked by terrain")
        //show_message("j")
        return false
    }
    
    if (collision == noone) {
        unit.x += x_step
        unit.y += y_step
        
    //collision with another gladiator
    } else if (collision.side == unit.side) {
        script_execute(scr_swap_gladiator_places, collision, unit)
    } else {
        scr_attack(unit, collision)
    }

}

unit.moves_left -= 1
if (unit.moves_left = 0) {
    unit.turn_used = true
}

return true

