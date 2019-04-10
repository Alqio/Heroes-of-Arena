///reset_casting()
global.casting = ""
with (obj_spell_button) {
    with (spell) instance_destroy()
    instance_destroy()
}
