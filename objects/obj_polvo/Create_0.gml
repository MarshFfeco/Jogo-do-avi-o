/// @description polvinho movimento
vspeed += 8 / 1.7;

alarm[0] = room_speed;

chance = 10;

pontos = 50;

if(place_meeting(x, y, obj_polvo)){
	instance_destroy(id, false);
}

atirando = function(){
	if(y > 0) {
		var _x_inimigo = x - 3;
		var _y_inimigo = y + sprite_height * .3 ;
		instance_create_layer(_x_inimigo, _y_inimigo, "Tiro", obj_tiro_inimigo);
	}
}

dropar = function(_chance){
	var valor = random(100);
	
	if(valor < _chance){
		instance_create_layer(x, y, "powerUp", obj_powe_up);
	}
}



