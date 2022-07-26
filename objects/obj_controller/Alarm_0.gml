/// @description instanciando inimigo
if(!instance_exists(obj_polvo)) {
	var tratamento = (pontos / (pontos^2)) + 1;
	var repeticoes = round(level * 10 / tratamento);
	
	repeat(repeticoes) {
		_cria_inimigo();
	}
}



alarm[0] = room_speed;


