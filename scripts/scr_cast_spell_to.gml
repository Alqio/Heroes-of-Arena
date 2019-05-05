///scr_cast_spell_to(target)
target = argument0
caster = global.turn
spell = global.casting

show_debug_message("target: " + target.name)
show_debug_message("caster: " + caster.name)
show_debug_message(spell)

spell_instance = scr_create_spell(spell, caster)

//spell_instance.level = level //NOTE: This worked somehow? level shouldn't be defined here
spell_instance.target = target
spell_instance.caster = caster
with (spell_instance) event_user(0)

//script_execute(spell_instance.spell_action, caster, target)
