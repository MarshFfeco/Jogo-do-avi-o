/// @description vida e escudo
var _x_player = 37;
var _y_player = display_get_gui_height() - sprite_height / 4;

var espaco = 40;
var multi = 0;
//desenhando navizinha
repeat(obj_player.vida){
	draw_sprite_ext(spr_player, 0, _x_player + espaco * multi, _y_player, .3, .3, 0, c_white, .5);
	multi++;;
}


