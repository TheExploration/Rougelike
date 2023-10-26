/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.5;
image_yscale = 0.5;


//Get Input
up = keyboard_check(ord("W"));
down = keyboard_check(ord("S"));
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));

//Calculate Movement
var moveX = right-left;
var moveY = down-up;

//Horizontal
hsp = moveX * move_spd;

//Vertical
vsp = moveY * move_spd;

//Diagonal


if (hsp != 0 && vsp != 0) {
	hsp = hsp/sqrt(2);
	vsp = vsp/sqrt(2);
}



//Move
move_and_collide(hsp, vsp, o_wall);



facing = round(point_direction(x,y,mouse_x,mouse_y) / 90) mod 4;
if (hsp!=0 || vsp != 0) {
	switch (facing) {
		
		case 0:  sprite_index = s_player_runright; break;
		case 1:  sprite_index = s_player_runup; break;
		case 2:  sprite_index = s_player_runleft; break;
		case 3:  sprite_index = s_player_rundown; break;
		
	}
} else {
	switch (facing) {
		case 0:  sprite_index = s_player_right; break;
		case 1:  sprite_index = s_player_up; break;
		case 2:  sprite_index = s_player_left; break;
		case 3:  sprite_index = s_player_down; break;
	}
}