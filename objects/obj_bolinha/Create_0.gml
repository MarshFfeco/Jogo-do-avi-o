/// @description I can?
// Inherit the parent event
event_inherited();

chance = 20;

i_can_move = true;

pontos = 50;

atirando = function(){
	if(y > 0) {
		var _x_inimigo = x - 3;
		var _y_inimigo = y + sprite_height * .3 ;
		instance_create_layer(_x_inimigo, _y_inimigo, "Tiro", obj_tiro_inimigo_grande);
	}
}


