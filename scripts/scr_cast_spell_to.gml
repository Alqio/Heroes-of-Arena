///scr_cast_spell_to(target)
target = argument0
caster = global.turn
spell = global.casting
//show_debug_message(object_get_name(target))
//show_debug_message(object_get_name(caster))
//show_debug_message(spell)

spell_instance = scr_create_spell(spell)
level = 1

for (var i = 0; i < caster.number_of_spells; i++) {
    spell_pair = caster.spells[i]
    if (spell_pair[0] == spell) {
        level = spell_pair[1]
        break
    }
}
spell_instance.level = level
spell_instance.target = target
spell_instance.caster = caster
with (spell_instance) event_user(0)

//script_execute(spell_instance.spell_action, caster, target)
