/// @description Insert description here
// You can write your code in this editor
x = o_player.x+4
y = o_player.y+22

var angle = point_direction(x,y,mouse_x,mouse_y);
if (angle > 90 && angle < 270) {
	image_yscale = -1;
	image_angle = angle
} else {
	image_yscale = 1;
	image_angle = angle
}