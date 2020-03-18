/// @description Create Bullet, add to bullet total.
// You can write your code in this editor
global.BulletsTotal++;
alarm_set(0, 240);
shooter = 0;
visible = false; //bullet will be rendered by draw function
alive = true;