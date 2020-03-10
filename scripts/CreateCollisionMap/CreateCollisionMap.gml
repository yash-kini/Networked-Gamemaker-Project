/// @function		CreateCollisionMap();
/// @description	Create a collision map from tiles

var xx, yy, i, t, top, left, s, tilemap;

global.mapsize = floor(room_width / 32) * floor(room_height / 32);
tilemap = layer_tilemap_get_id("Tile_Layer");

// Loop through the tile map, and find the tiles, then place them 
// in the "simple" collision map.
for (yy = 0; yy < room_height; yy += 32;)
{
s="";
for (xx = 0; xx < room_width; xx += 32;)
    {
    i = (xx / 32) + ((yy / 32) * (room_width / 32));
    global.map[i] = -1;
    t = tilemap_get_at_pixel(tilemap, xx, yy);
    if( tile_get_index(t) > 0 )
        {
        s = s + "1";
        global.map[i] = xx;            
        }
	else
        {
		s = s + "_";
		}
    }
show_debug_message(s);
}


