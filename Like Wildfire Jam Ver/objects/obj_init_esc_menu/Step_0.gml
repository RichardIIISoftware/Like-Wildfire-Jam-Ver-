/// @description
if room == rm_init || room == rm_logo || room == rm_main_menu
{
	instance_destroy();
}

// go to pause room if escape is pressed
if keyboard_check_pressed(vk_escape)
{
	global.previous_room = room;
	audio_play_sound(snd_fx_lamp_off, 110, false);
	room_goto(rm_esc_menu);
}