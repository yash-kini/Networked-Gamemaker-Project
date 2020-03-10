/// @function				AddVkey(key);
/// @description			Adds a virtual key on platforms that need it, and return the virtual key ID value
/// @param	{real}	key		The keycode to add

var platform = os_type;

if (platform == os_macosx || platform == os_windows || platform == os_linux)
{
instance_destroy();
}
else
{
return virtual_key_add(x, y, sprite_get_width(sprite_index) * image_xscale, sprite_get_height(sprite_index) * image_yscale, argument0);
}


