/// @description  Initialise the player and map
CreateCollisionMap();

sprite_index = walk_right;
image_speed = 0.5;
PlayerName="";
pWidth = sprite_get_width(sprite_index);
pHeight = sprite_get_height(sprite_index);
// 3 keys: left, right and jump (could be more)
for(var i = 0; i < 4; i++;)
{
keys[i] = false;
}

// basic movement setup
xspeed = 2;


dir = 0;

global.PlayerTotal++;        



