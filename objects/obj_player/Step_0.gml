/// @description movimentação
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));
var shield = keyboard_check_pressed((ord("E")));

var _hspd = _right - _left;
var _vspd = _down - _up;

var _dash = keyboard_check(vk_shift); 

if (_hspd != 0 || _vspd != 0) {
    var _dir = point_direction(0, 0, _hspd, _vspd);
    var _xadd = lengthdir_x(_spd, _dir);
    var _yadd = lengthdir_y(_spd, _dir);
    x += _xadd;
    y += _yadd;
	
	
	if(_dash && alarm[1] == -1) {
		alarm[1] = room_speed;
		x += _xadd * 25;
		y += _yadd * 25;
	}
}

if(vida <= 0) {
	instance_destroy();
}

if(shield && obj_controller.limite_escudo > 0){
	if(!instance_exists(obj_escudo)){
		var escudo = instance_create_depth(x, y, 1, obj_escudo);

		escudo.alvo = id;
		
		obj_controller.limite_escudo--;
	}
}

atirando();








