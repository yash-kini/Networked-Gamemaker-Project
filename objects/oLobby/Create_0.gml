/// @description Insert description here
// You can write your code in this editor
global.GameStart = false;
isHost = false;

//reset all player status
with(oPlayer){
	alive = true;
	isTraitor = false;
	hp = global.playerHealth;
}