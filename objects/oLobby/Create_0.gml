/// @description Insert description here
// You can write your code in this editor
global.GameStart = 0;
// 0 = players can't move and shoot
// 1 = player's can move, and can't shoot
// 2 = player's can move and shoot
isHost = false;

//reset all player status
with(oPlayer){
	alive = true;
	gun.alive = true;
	isTraitor = false;
	hp = global.playerHealth;
}