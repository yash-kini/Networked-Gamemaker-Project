/// @description Start game, and begin timer to assign roles
if(isHost){
	global.GameStart = 1;
	alarm_set(3, room_speed*10)//Give out game roles in 10 seconds
	visible = false

}

