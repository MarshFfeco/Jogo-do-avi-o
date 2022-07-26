/// @description efeito do tiro
draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(_spr_brilho, image_index, x, y, image_xscale * .5, image_yscale * .3, image_angle, _cores, _alpha);

gpu_set_blendmode(bm_normal);

