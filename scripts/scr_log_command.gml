///scr_log_command(text)

if (global.log != noone) {
    ds_list_add(global.log.log, string(global.log.log_number) + ". " + argument0)
    global.log.size++
    global.log.log_number++
    if (global.log.size > global.log.max_size) {
        ds_list_delete(global.log.log, 0)
    }
}
