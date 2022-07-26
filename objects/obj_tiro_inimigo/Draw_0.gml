/// @description efeitinho
draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(spr_brilho_tiro_inimigo_1, image_index, x, y, image_xscale * .3, image_yscale *.3, image_angle, _cores, .5);

gpu_set_blendmode(bm_normal);


