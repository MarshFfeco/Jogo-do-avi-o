/// @description movimentação
var _up = keyboard_check(ord("W"));
var _down = keyboard_check(ord("S"));
var _left = keyboard_check(ord("A"));
var _right = keyboard_check(ord("D"));

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

if(keyboard_check_pressed(vk_up)){
	if(_level_tiro < 5){
		_level_tiro++;
	}
	show_debug_message(_level_tiro);
}

if(keyboard_check_pressed(vk_down)){
	if(_level_tiro > 1){
		_level_tiro--;
	}
	show_debug_message(_level_tiro);
}

if(keyboard_check_pressed(vk_left) && _espera_tiro >= 15){
	_espera_tiro *= .9;
	
	show_debug_message(_espera_tiro);
}
if(keyboard_check_pressed(vk_right) && _espera_tiro < 40){
	_espera_tiro *= 1.1;
	
	show_debug_message(_espera_tiro);
}

atirando();








