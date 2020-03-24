/// @description Draw player names
/// @description  Draw server list
draw_set_font(font0);
draw_set_color(c_black);



var yindex = 40;
player_names = ds_list_create();
with(oPlayer){
	ds_list_add(other.player_names, PlayerName);
}
if (ds_list_size(player_names) > 0){
	isHost = true;
	draw_text(80, 10, "Connected Players - Press Enter to start game");
	draw_line(80, 30, room_width - 10, 30);
}


for(var i = 0; i < ds_list_size(player_names); i++;)
{
	draw_text(80, yindex, player_names[|i]);
	yindex += 30;
}

background_color = c_green;