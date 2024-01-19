/// @description Insert description here
// You can write your code in this editor

camera_set_view_pos(view_camera[0], o_player.x - 240 + (device_mouse_x_to_gui(0)-480)/15, o_player.y-135+(device_mouse_y_to_gui(0)-270)/10)
show_debug_overlay(true);
show_debug_message(device_mouse_x_to_gui(0))
show_debug_message(device_mouse_y_to_gui(0))