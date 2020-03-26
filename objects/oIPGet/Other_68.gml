/// @description Recieve local IP

show_debug_message("IP BELOW");
show_debug_message(string(ds_map_find_value(async_load, "ip")));
global.connectip = string(ds_map_find_value(async_load, "ip"));
instance_destroy();
