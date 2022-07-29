/// @description 
vida = 3;

_spd = 8;

_can_shoot = true;
_level_tiro = 1;

_espera_tiro = room_speed;

atirando = function(){
	var _fire = keyboard_check(vk_space);
	
	if(_can_shoot) {
		if(_fire) {
			_can_shoot = false;
			
			var _y_player = y - sprite_height * .3;
			
			alarm[0] = _espera_tiro;
			
			//PARA A DIREÇÃO ESQUERDA E DIREITA
			var _position_shoot_es = x - sprite_height / 2.5;
			var _position_shoot_di = x + sprite_height / 2.5;
			var _position_shoot_3 = _y_player + sprite_height / 2.5;
			switch(_level_tiro){
				case 1:
					instancia_tiro(,, x, _y_player, "Tiro", obj_tiro_player);
				break;
				case 2:
					instancia_tiro(,, x, _y_player, "Tiro", obj_tiro_player_2);
				break;
				case 3:
					instancia_tiro(,, _position_shoot_di, _position_shoot_3,"Tiro", obj_tiro_player);
					instancia_tiro(,, _position_shoot_es, _position_shoot_3,"Tiro", obj_tiro_player_2);
				break;
				case 4:	
					instancia_tiro(,, x, _y_player, "Tiro", obj_tiro_player);
					instancia_tiro(true, 75, _position_shoot_di, _position_shoot_3,"Tiro", obj_tiro_player_2);
					instancia_tiro(true, 105, _position_shoot_es, _position_shoot_3,"Tiro", obj_tiro_player_2);
				break;
				case 5:	
					instancia_tiro(,, x, _y_player, "Tiro", obj_tiro_player);
					instancia_tiro(true, 75,x, _y_player, "Tiro", obj_tiro_player);
					instancia_tiro(true, 105,x, _y_player, "Tiro", obj_tiro_player);
					
					instancia_tiro(true, 75, _position_shoot_di, _position_shoot_3,"Tiro", obj_tiro_player_2);
					instancia_tiro(true, 105, _position_shoot_es, _position_shoot_3,"Tiro", obj_tiro_player_2);
				break;
			}
		}
	}
}

///@method função para atirar
function instancia_tiro(_can_move_fire = false, tiro_movemento = 0, x, y, layer, objeto) {
	var tiro = instance_create_layer(x, y, layer, objeto);
	
	if(_can_move_fire){
		tiro.direction = tiro_movemento;
		tiro.image_angle = tiro.direction - 90;
	}
}

///@method power_up(porcentagem);
function power_up(chance) {
	if(chance >= 0 && chance <= 45){
		if(_spd <= 10) {
			_spd += .5
		}
	} 
	
	if(chance > 45 && chance <= 90){
		if(_espera_tiro > 20){
			_espera_tiro *= .9;
		}
	}
	
	if(chance > 90) {
		if(_level_tiro < 5) {
			_level_tiro++;
		}
	}
}




