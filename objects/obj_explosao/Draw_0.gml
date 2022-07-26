/// @description embelezando
draw_self();

gpu_set_blendmode(bm_add);

draw_sprite_ext(sprite_index, image_index * .7, x, y, image_xscale * 1.4, image_yscale * 1.4, image_angle, _cor, .5);

gpu_set_blendmode(bm_normal);
