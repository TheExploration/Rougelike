/// @description Insert description here
// You can write your code in this editor



//Get Input
if (has_control) {
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));

	//Calculate Movement
	var moveX = right-left;
	var moveY = down-up;

	var _dir  = point_direction(0, 0, moveX, moveY); //lets say the direction from the x,y point to the mouse x, y point are = 40;


	if (moveX != 0|| moveY!=0) {
		//Horizontal
		hsp = lengthdir_x(1, _dir)*move_spd;

		//Vertical
		vsp = lengthdir_y(1, _dir)*move_spd;
	} else {
		hsp = 0
		vsp = 0
	}
}


//Get Input Dodgeroll
if ((mouse_check_button_pressed(mb_right) || keyboard_check_pressed(vk_shift)) && !roll && has_control) {
	has_control = false;
	roll = true;
	mask_index=-1
	alarm[1] = 15;
	alarm[2] = 30;
	
	rolldir  = point_direction(0, 0, hsp, vsp); 
	
	
}
if (roll && !has_control) {
	if (hsp != 0 || vsp !=0) {
		hsp = lengthdir_x(1, rolldir)*10;
		vsp = lengthdir_y(1, rolldir)*10;
	}
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