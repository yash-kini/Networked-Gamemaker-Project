/// @description Draw UI conveying game state
// You can write your code in this editor
draw_set_font(mohave_small);
show_debug_message(string(gamestate));



if(gamestate == LOBBY){
	draw_set_color(c_yellow);
	draw_text(200, 0, "WAITING FOR HOST TO START GAME");
}

if(gamestate == ASSIGN){
	draw_set_color(c_green);
	draw_text(200, 0, "PREGAME: ASSIGNING TRAITORS");
}

if(gamestate == GAME){
	if(client_isTraitor){
		draw_set_color(c_red);
		draw_text(200, 0, "YOU ARE A TRAITOR, ELIMINATE THE RESISTANCE");
	}
	else {
		draw_set_color(c_green);
		draw_text(200, 0, "YOU ARE IN THE RESISTANCE, FIND AND ELIMANATE THE TRAITORS");
	}
}