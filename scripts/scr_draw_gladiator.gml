///scr_draw_gladiator(gladiator, x, y, everything)

gladiator = argument0
xx = argument1
yy = argument2
everything = argument3

xx = 64
yy = 64

if (gladiator == noone || gladiator == undefined) {
    return 0
}

draw_sprite_ext(gladiator.sprite_index, gladiator.image_index, xx, yy, 2, 2, 0, c_white, 1)

draw_set_font(fnt_large)
draw_outline(gladiator.name, xx + sprite_get_width(gladiator.sprite_index) + 8 , yy - sprite_get_height(gladiator.sprite_index), c_yellow)
draw_set_font(fnt_small)

draw_outline("HP: " + string(gladiator.hp) + "/" + string(gladiator.max_hp), xx - sprite_get_width(gladiator.sprite_index), yy + 32 + 8, make_color_rgb(244, 100, 100))
draw_outline("MP: " + string(gladiator.mana) + "/" + string(gladiator.max_mana), xx - sprite_get_width(gladiator.sprite_index), yy + 32 + 8 + 16, make_color_rgb(66, 134, 244))

str = 
    "Weapon: " + string(gladiator.weapon.name) + "#" +
    "Strength: " + string(gladiator.strength) + "#" + 
    "Spell power: " + string(gladiator.spell_power) + "#" +
    "Speed: " + string(gladiator.spd) + "#" +
    "Level: " + string(gladiator.level) + " Exp: " + string(gladiator.experience) + "/" + string(gladiator.experience_needed) + "#" +
    "Wage: " + string(gladiator.wage) + "#" + 
    "Age: " + string(gladiator.age) + "#" + 
    "Actions: " + string(gladiator.moves_left) + "/" + string(gladiator.max_moves_per_turn) + "#"

draw_outline(str, xx - sprite_get_width(gladiator.sprite_index), yy + 32 + 8 + 16 + 16, c_yellow)

if (everything) {
    draw_outline("Recruitment cost: " + string(scr_calculate_gladiator_cost(gladiator)), xx - sprite_get_width(gladiator.sprite_index), yy + 256, c_yellow)
}
