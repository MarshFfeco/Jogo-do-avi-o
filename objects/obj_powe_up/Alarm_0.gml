/// @description efeitinho

image_alpha -= .1

if(image_alpha <= .01){
	instance_destroy(id, false);
}

alarm[0] = room_speed / 1.5;




