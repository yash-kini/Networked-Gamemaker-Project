/// @description Start game, and begin timer to assign roles
if(isHost){
	global.GameState = ASSIGN;
	alarm_set(3, room_speed*10);//Give out game roles in 10 seconds
	visible = false;
	//reset all player status
	with(oPlayer){
		alive = true;
		gun.alive = true;
		isTraitor = false;
		hp = global.playerHealth;
	}

}

