/// @description  Draw all sprites in level

// set the X and Y of the client so the room "follows" our player
x = clientx;
y = clienty;

// Now loop through all active sprites and draw them
var index = 0;
var xx, yy, sp, spindex, col;

for(var i = 0; i < sprites; i++;)
{
xx = allsprites[| index++];
yy = allsprites[| index++];
sp = allsprites[| index++];
spindex = allsprites[| index++];
col = allsprites[| index++];
name = allsprites[| index++];
target_x = allsprites[| index++];
target_y = allsprites[| index++];


draw_sprite_ext(sp, spindex, xx, yy, 1, 1, 0, col, 1); 
//Naive Approach to gun rendering - This must change when guns can be picked up and dropped
draw_sprite_ext(sPistol, 0, xx+16, yy+16, 1, 1, point_direction(xx, yy, target_x, target_y), col, 1);
draw_set_color(c_white);
draw_set_font(fName);
draw_set_halign(fa_center);
draw_text(xx + 16, yy - 20, name);
}






