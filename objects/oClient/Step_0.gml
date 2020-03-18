/// @description Tell server MOUSE moved or was clicked
if (mouse_x != p_mouse_x or 
	mouse_y != p_mouse_y){
	p_mouse_x = mouse_x;
	p_mouse_y = mouse_y;
	SendMouse(mouse_x, mouse_y);
}

if (mouse_check_button_pressed(mb_left)){
	SendKey(mb_left, 1);
	alarm_set(1, 1);

}