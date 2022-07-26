/// @description 
alarm[0] = room_speed * .5;

pontos = 0;

level = 1;

mais_level = 500;

//@method ganhar pontos com argumentos 
global.ganhar_pontos = function(ganhos) {
	pontos += ganhos;
	
	if(pontos >= mais_level) {
		level++;
		
		mais_level *= 2;
	}
};

_cria_inimigo = function(){
	var _x_position = random_range(32, 1898)/* - sprite_get_width*/;
	var _y_position = - random_range(40, 300);

	var _obj_instance = obj_polvo;

	var _chance = random_range(0, level);

	if(_chance >= 3) {
		_obj_instance = obj_bolinha;
	}

	instance_create_layer(_x_position, _y_position, "inimigo", _obj_instance);	
};



