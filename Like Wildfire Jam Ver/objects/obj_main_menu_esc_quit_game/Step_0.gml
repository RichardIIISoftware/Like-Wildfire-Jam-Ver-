/// @description 

if keyboard_check_pressed(vk_escape)
{
	audio_play_sound(snd_fx_lamp_off, 110, false);
	game_end();
}


