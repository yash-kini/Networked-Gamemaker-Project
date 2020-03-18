/// @description  Initialise the player and map
CreateCollisionMap();

sprite_index = walk_right;
image_speed = 0.5;
PlayerName="";
target_x = 0;
target_y = 0;

margin = 10; //Wiggle room for collision box
pWidth = sprite_get_width(sprite_index)-(2*margin);
pHeight = sprite_get_height(sprite_index)-margin;

// 3 keys: left, right and jump (could be more)
for(var i = 0; i < 5; i++;)
{
keys[i] = false;
}

// basic movement setup
xspeed = 4;

//create pistol instance
gun = instance_create_depth(x, y, 0, oPistol);
gun.visible = false; // gun will be rendered by oClient - draw
global.PlayerTotal++;        



