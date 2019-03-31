///scr_create_spell_buttons(gladiator, x, y)

gladiator = argument0
xx = argument1
yy = argument2

i = 0
repeat(gladiator.number_of_spells) {
    spell_button = instance_create(xx, yy + (sprite_get_height(spr_spell_button) + 2) * i, obj_spell_button)
    spell_pair = gladiator.spells[i]
    spell_button.text = spell_pair[0]
    i++
}
