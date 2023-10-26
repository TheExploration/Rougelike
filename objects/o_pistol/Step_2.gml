/// @description Insert description here
// You can write your code in this editor
image_xscale = 0.5;
image_yscale = 0.5;

x = o_player.x+4
y = o_player.y+22

var angle = point_direction(x,y,mouse_x,mouse_y);
if (angle > 90 && angle < 270) {
	image_yscale = -1;
	image_angle = angle
	x = o_player.x-8
	y = o_player.y+22
	if (angle > 45 && angle < 135) {
		depth = 10;
	}	else {
		depth = -10;
	}
} else {
	image_yscale = 1;
	image_angle = angle
	x = o_player.x+8
	y = o_player.y+22
	if (angle > 45 && angle < 135) {
		depth = 10;
	}	else {
		depth = -10;
	}
}