/// @description 



//go back to logo screen if Esc is pressed & play sound
if keyboard_check_pressed(vk_escape)
{
	audio_play_sound(snd_fx_lamp_off, 110, false);
	room_goto(rm_logo);
}