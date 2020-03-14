/// @description  Process the player (move+collision)
/// @function  Process the player 
/// @param move+collision
var xx, yy, c1, c2;

 

// If moving left, check LEFT collision
if keys[LEFT_KEY] 
{
	dir = -1;

	x = x - xspeed;
	c2 = -1;
	c1 = GetCollision(x, y);
	if (y&$1f) > 0
		{
		c2 = GetCollision(x, y + 32);
		}
	if (c1 >= 0 || c2 >= 0)
		{
	    x = (x&$ffffffe0) + 32;
		}    
}
else if keys[RIGHT_KEY]
{
	// Otherwise, check collision to the right
	dir = 1;

	x = x + xspeed;
	c2 = -1;
	c1 = GetCollision(x + 32, y);
	if (y&$1f) > 0
		{
		c2 = GetCollision(x + 32, y + 32);
		}
	if (c1 >= 0 || c2 >= 0)
	    {
	    x = (x&$ffffffe0);
	    }    
}
else if keys[UP_KEY]
{
	dir = 1;
	y = y - xspeed;
}
else if keys[DOWN_KEY]
{
	dir = 1;
	y = y + xspeed;
}
else
{
	// If standing still, don't animate
	image_index = 0;
}





