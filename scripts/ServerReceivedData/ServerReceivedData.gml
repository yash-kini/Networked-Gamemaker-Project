/// @function		ServerReceivedData();
/// @description	Read incoming data to the server from a connected socket

//if host has not started game, block all actions

// get the buffer the data resides in
var buff = async_load[? "buffer"];
// read ythe command 
var cmd = buffer_read(buff, buffer_s16);
// Get the socket ID - this is the CLIENT socket ID. We can use this as a "key" for this client
var sock = async_load[? "id"];
// Look up the client details
var inst = Clients[? sock];
// Is this a KEY command?
// Don't allow player to move or shoot if game has not started
if cmd == KEY_CMD and global.GameStart
	{
	// Read the key that was sent
	var key = buffer_read(buff, buffer_s16 );
	// And it's up/down state
	var updown = buffer_read(buff, buffer_s16 );
	// translate keypress into an index for our player array.
	if key == vk_left
		{
	    key = LEFT_KEY;
		}
	else if key == vk_right
		{
	    key = RIGHT_KEY;
		}
	else if key == vk_up
		{
			key = UP_KEY;
		}
	else if key == vk_down
		{
			key = DOWN_KEY;
		}
	else if key == mb_left
		{
			key = LEFT_MOUSE;
		}
	// translate updown into a bool for the player array       
	if updown == 0
		{
	    inst.keys[key] = false;
		}
	else
		{
	    inst.keys[key] = true;
		}
	}
// Is this a NAME command?
else if cmd == NAME_CMD    
	{
	// Set the client "name"
	inst.PlayerName = buffer_read(buff, buffer_string);    
	}
else if cmd == PING_CMD
	{
	// keep alive - ignore it
	}
else if cmd == MOUSE_CMD //mouse buttons are listed as key commands
	{    
	//read mouse x position
	var m_x = buffer_read(buff, buffer_s16 );
	//read mouse y position
	var m_y = buffer_read(buff, buffer_s16 );
	inst.target_x = m_x;
	inst.target_y = m_y;
	}

