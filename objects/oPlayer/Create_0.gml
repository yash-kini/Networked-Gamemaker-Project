/// @description  Initialise the player and map
CreateCollisionMap();

sprite_index = walk_right;
image_speed = 0.5;
PlayerName="";

// 3 keys: left, right and jump (could be more)
for(var i = 0; i < 3; i++;)
{
keys[i] = false;
}

// basic movement setup
xspeed = 2;
grav = 2;
jump = false;
dir = 0;

global.PlayerTotal++;        



