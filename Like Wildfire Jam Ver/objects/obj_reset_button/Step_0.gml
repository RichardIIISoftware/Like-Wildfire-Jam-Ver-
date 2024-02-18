/// @description

//if clicked, reset room
if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_reset_button)
{
	audio_play_sound(snd_fx_lamp_off, 100, false);
	room_goto(rm_init_work_1);
}

