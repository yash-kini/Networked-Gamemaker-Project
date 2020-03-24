/// @description  Send player data to ALL attached clients

// Once a frame, we send ALL attached clients, ALL game sprites (plaeyrs and baddies)
var count = ds_list_size(socketlist);
if count > 0
{
/// Send all sprites to all clients
global.player_buffer = player_buffer;
// Reset buffer to start - Networking ALWAYS reads from the START of the buffer
buffer_seek(player_buffer, buffer_seek_start, 0);
//Total number of sprite to send
buffer_write(player_buffer, buffer_u32, global.PlayerTotal + global.GunTotal + global.BulletsTotal);
// Dummy player x,y...will fill in later. This allows the client to follow themselves in a scrolling level.
buffer_write(global.player_buffer, buffer_s16, 0);
buffer_write(global.player_buffer, buffer_s16, 0);
// Dummy traitor status, will be filled in the for loop at the bottom of this file
buffer_write(global.player_buffer, buffer_bool, false);
// All attached players
with(oPlayer)
	{
    buffer_write(global.player_buffer, buffer_s16, x);
    buffer_write(global.player_buffer, buffer_s16, y);
    buffer_write(global.player_buffer, buffer_s16, sprite_index);
    buffer_write(global.player_buffer, buffer_s16, image_index);
    buffer_write(global.player_buffer, buffer_s32, image_blend);
    buffer_write(global.player_buffer, buffer_string, PlayerName);
	buffer_write(global.player_buffer, buffer_s16, image_angle);
	buffer_write(global.player_buffer, buffer_bool, alive);
	}
// Now send all pistols
with(oPistol)
	{
    buffer_write(global.player_buffer, buffer_s16, x);
    buffer_write(global.player_buffer, buffer_s16, y);
    buffer_write(global.player_buffer, buffer_s16, sprite_index);
    buffer_write(global.player_buffer, buffer_s16, image_index);
    buffer_write(global.player_buffer, buffer_s32, image_blend);
    buffer_write(global.player_buffer, buffer_string, "");
	buffer_write(global.player_buffer, buffer_s16, image_angle);
	buffer_write(global.player_buffer, buffer_bool, alive);
	}
// Now send all bullets
with(oBullet)
	{
    buffer_write(global.player_buffer, buffer_s16, x);
    buffer_write(global.player_buffer, buffer_s16, y);
    buffer_write(global.player_buffer, buffer_s16, sprite_index);
    buffer_write(global.player_buffer, buffer_s16, image_index);
    buffer_write(global.player_buffer, buffer_s32, image_blend);
    buffer_write(global.player_buffer, buffer_string, "");
	buffer_write(global.player_buffer, buffer_s16, image_angle);
	buffer_write(global.player_buffer, buffer_bool, alive);
	}
var buffer_size = buffer_tell(player_buffer);
// Now send all data... to all clients
for(var i = 0; i < count; i++;)
	{   
    // get the socket
    var sock = socketlist[| i];
    // Write in client location, so it can do a scroll window "follow"
    buffer_seek(player_buffer, buffer_seek_start, 4);
    // Get the player's instance, so we can get it's X,Y
    var inst = ds_map_find_value( Clients, sock);
    buffer_write(global.player_buffer, buffer_s16, inst.x);
    buffer_write(global.player_buffer, buffer_s16, inst.y);
	// Send isTraitor status to client
	buffer_write(global.player_buffer, buffer_bool, inst.isTraitor);
    // Send data to client
    network_send_packet( sock,player_buffer, buffer_size);
    }
}