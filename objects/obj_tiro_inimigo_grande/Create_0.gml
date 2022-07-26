/// @description melhorando
// Inherit the parent event
event_inherited();
if(instance_exists(obj_player)) {
	direction = point_direction(x, y, obj_player.x, obj_player.y);
}
image_angle = direction + 90;

