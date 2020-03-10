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
draw_sprite_ext(sp, spindex, xx, yy, 1, 1, 0, col, 1); 
draw_set_color(c_white);
draw_set_font(fName);
draw_set_halign(fa_center);
draw_text(xx + 16, yy - 20, name);
}






