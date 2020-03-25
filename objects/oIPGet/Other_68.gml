/// @description Insert description here
// You can write your code in this editor
show_debug_message("IP BELOW");
show_debug_message(string(ds_map_find_value(async_load, "ip")));
global.connectip = string(ds_map_find_value(async_load, "ip"));
instance_destroy();
