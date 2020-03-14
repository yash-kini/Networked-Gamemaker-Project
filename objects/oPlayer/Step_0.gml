/// @description  Process the player (move+collision)
/// @function  Process the player 
/// @param move+collision
var xx, yy, c1, c2;

var mx = 0, my = 0,

// If moving left, check LEFT collision
if keys[LEFT_KEY] 
{
	dir = -1;
	mx = -1*xspeed;
}
if keys[RIGHT_KEY]
{
	// Otherwise, check collision to the right
	dir = 1;

	mx = xspeed;
}
if keys[UP_KEY]
{
	my = -1*xspeed;
}
if keys[DOWN_KEY]
{
	my = xspeed;
}

//FOUR CORNER COLLISION CHECK
var px = x+mx;
var py = y+my;
if not (GetCollision(px, py) or
		GetCollision(px+pWidth, py) or
		GetCollision(px, py+pHeight) or
		GetCollision(px+pWidth, py+pHeight))
		{
		x += mx;
		y += my;
		}
			
