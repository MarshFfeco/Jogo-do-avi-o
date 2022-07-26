/// @description sobrepondo
event_inherited();

//checado	
if(y >= room_height / 3.5 and i_can_move == true) {
	i_can_move = false;
	if(x >= room_width / 2){
		hspeed = -3;
		return;
	}
	hspeed = 3;
}





