/// @description Insert description here
// You can write your code in this editor

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


//MOve
move_and_collide(hsp, vsp, o_wall);
