///scr_draw_gladiator(gladiator, x, y, font)

gladiator = argument0
xx = argument1
yy = argument2
font = argument3

draw_set_font(fnt_medium)
draw_outline(gladiator.name, xx, yy, c_yellow)
draw_set_font(fnt_small)

str = "HP: " + string(gladiator.hp) + "/" + string(gladiator.max_hp) + "#" + 
    "MP: " + string(gladiator.mana) + "/" + string(gladiator.max_mana) + "#" + 
    "Weapon: " + string(gladiator.weapon.name) + "#" +
    "Strentgh: " + string(gladiator.strength) + "#" + 
    "Spd: " + string(gladiator.spd) + "#" +
    "Actions: " + string(gladiator.moves_left) + "/" + string(gladiator.max_moves_per_turn) + "#"

draw_outline(str, xx, yy + 32, c_yellow)

