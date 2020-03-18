/// @description Check collision
// You can write your code in this editor

if (GetCollision(x, y)) {
	instance_destroy();
}

var _inst = instance_place(x, y, oPlayer);

if (_inst != noone and _inst.id != shooter and alive) {
	if (instance_exists(_inst) and _inst.alive){
		_inst.hp -= 1;
		show_debug_message("Player Health: "+string(_inst.hp))
		instance_destroy();
	}

}