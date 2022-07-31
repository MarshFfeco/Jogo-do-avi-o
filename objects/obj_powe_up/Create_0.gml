/// @description upgrade
chance = irandom(100);

alarm[0] = room_speed * 2;

speed = 4;
direction = irandom(359);


if(chance >= 90){
	colorPowerUp = c_red;
}
if(chance >= 0 && chance <= 45){
	colorPowerUp = c_green;
}
if(chance > 45 && chance < 90){
	colorPowerUp = c_aqua;
}

