/// @description  Start game - local client+server
global.ServerName = oTextBox.text;
global.Server = instance_create_layer(0, 0, "Instance_Layer", oServer);

if global.haveserver == false
{
show_debug_message("Cant create server");
}
else
{

network_destroy(global.broadcast_server);
global.broadcast_server = -1;
room_goto(Level1);
instance_create_depth(0, 0, 0, oLobby);
}

