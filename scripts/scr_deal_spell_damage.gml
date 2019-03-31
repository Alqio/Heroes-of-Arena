///spell, caster, target

spell = argument0
caster = argument1
target = argument2
dmg = argument3

target.hp -= dmg
scr_log_command(target.name + " takes " + string(dmg) + " damage")
if (target.hp <= 0) scr_kill_gladiator(target)
