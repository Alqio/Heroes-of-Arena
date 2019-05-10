///scr_draw_spell_stats(spell, x, y, color)

spell = argument0
xx = argument1
yy = argument2
color = argument3

draw_sprite(spell.sprite_index, 0, xx, yy)

draw_set_font(fnt_small)
draw_shadow(spell.name, xx + sprite_get_width(spell.sprite_index) + 4, yy, color)

draw_set_font(fnt_tiny)
//draw_shadow(spell.description, xx, yy + 12, color)
draw_shadow("Damage: (" + string(spell.damage) + " * spell level) + (" + string(spell.spell_power_damage) + " * spell power)", xx, yy + 12, color)
draw_shadow("Mana cost: " + string(spell.mana_cost), xx, yy + 18, color)
