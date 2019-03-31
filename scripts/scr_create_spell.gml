spell_name = argument0
caster = argument1

spell = noone
if (spell_name == "Fireball") {
    //spell = instance_create(x,y, obj_fireball)
}
spell = instance_create(x,y, obj_fireball)

level = 1

for (var i = 0; i < caster.number_of_spells; i++) {
    spell_pair = caster.spells[i]
    if (spell_pair[0] == spell_name) {
        level = spell_pair[1]
        break
    }
}
spell.level = level
spell.caster = caster

return spell
