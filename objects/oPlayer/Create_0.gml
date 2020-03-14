/// @description  Initialise the player and map
CreateCollisionMap();

sprite_index = walk_right;
image_speed = 0.5;
PlayerName="";

margin = 10; //Wiggle room for collision box
pWidth = sprite_get_width(sprite_index)-(2*margin);
pHeight = sprite_get_height(sprite_index)-margin;
// 3 keys: left, right and jump (could be more)
for(var i = 0; i < 4; i++;)
{
keys[i] = false;
}

// basic movement setup
xspeed = 2;


dir = 0;

global.PlayerTotal++;        



