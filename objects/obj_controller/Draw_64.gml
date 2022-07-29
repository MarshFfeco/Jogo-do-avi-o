/// @description x, y
var _x_player = 37;
var _y_player = display_get_gui_height() - 70;

var espaco = 40;
var multi = 0;
//desenhando navizinha
repeat(limite_escudo){
	draw_sprite_ext(spr_escudo, 2, _x_player + espaco * multi, _y_player, .25, .25, 0, c_white, .5);
	multi++;
}

draw_text(12, 12, "Pontos: " + string(pontos));
draw_text(12, 30, "Level: " + string(level));//draw_text(12, 48, "Vida: " + string(obj_player.vida));


