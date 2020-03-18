/// @description Tell server MOUSE was moved

if (mouse_x != p_mouse_x or 
	mouse_y != p_mouse_y){
	p_mouse_x = mouse_x;
	p_mouse_y = mouse_y;
	SendMouse(mouse_x, mouse_y);
}

