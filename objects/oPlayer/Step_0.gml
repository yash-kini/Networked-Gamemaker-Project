/// @description  Process the player (move+collision)
/// @function  Process the player 
/// @param move+collision

//Interpret Input
var xdir = 0, ydir = 0;
if keys[LEFT_KEY] 
{
	xdir = -1;
}
if keys[RIGHT_KEY]
{
	xdir = 1;
}
if keys[UP_KEY]
{
	ydir = 1;
}
if keys[DOWN_KEY]
{
	ydir = -1;
}

//Calculate Direction and Movement 
var mx = 0, my = 0, //change in x and y positions
if(xdir != 0 or ydir != 0){
	dir = point_direction(0, 0, xdir, ydir);
	mx = xspeed*cos(degtorad(dir));
	my = xspeed*sin(degtorad(dir));	
}

//Four Corner Collision Check
var px = x+mx+margin;
var py = y+my+margin;
if not (GetCollision(px, py) or
		GetCollision(px+pWidth, py) or
		GetCollision(px, py+pHeight) or
		GetCollision(px+pWidth, py+pHeight))
		{
		x += mx;
		y += my;
		}
		
//Update Gun Position
gun.image_angle = point_direction(x, y, target_x, target_y);
gun.x = x+16;
gun.y = y+16;