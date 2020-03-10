/// @function		GetCollision(x, y);
/// @description	Get collision data from collision map
/// @param	{real}	X coordinate to get tile data from (in pixels, not tiles)
/// @param	{real}	Y coordinate to get tile data from (in pixels, not tiles)

if argument0 >= room_width || argument0 < 0 return -1;
if argument1 >= room_height || argument1 < 0 return -1;

var xx = floor(argument0 / 32) + (floor(argument1 / 32) * floor(room_width / 32));
if global.mapsize < xx
	{
	return -1;
	}
else return global.map[xx];

