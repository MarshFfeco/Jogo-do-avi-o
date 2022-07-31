/// @description movendo

view_xport[0] = random_range(-_shake, _shake);
view_yport[0] = random_range(-_shake, _shake);

_shake*= .95;

if(_shake <= .5){
	instance_destroy();
}





