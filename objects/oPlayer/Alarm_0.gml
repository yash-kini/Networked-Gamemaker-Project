/// @description Check if a team has won
show_debug_message("Player Alarm 0");
var goodDead = true;
var traitDead = true;
for (i = 0; i < global.PlayerTotal; i++){
	var player = instance_find(oPlayer,i);
	if(player.isTraitor and player.alive){
		traitDead = false;
	}
	if(not player.isTraitor and player.alive){
		goodDead =  false;
	}
}

if (traitDead) {
	//Good guys win
	show_debug_message("Good guys win");
	instance_create_depth(0,0,0,oLobby);
}

if (goodDead){
	//Traitors win
	show_debug_message("Traitors win");
	instance_create_depth(0,0,0,oLobby);
}

