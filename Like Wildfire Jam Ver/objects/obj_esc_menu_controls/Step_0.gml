/// @description 

//return to previous room if space is pressed
if keyboard_check_pressed(vk_space)
{
	audio_play_sound(snd_fx_lamp_off, 110, false);
	room_goto(global.previous_room);
}

//return to main menu if escape is pressed
if keyboard_check_pressed(vk_escape)
{
	audio_play_sound(snd_fx_lamp_off, 110, false);
	room_goto(rm_init);
}

//quit game completely if "Q" is pressed
if keyboard_check_pressed(ord("Q"))
{
	audio_play_sound(snd_fx_lamp_off, 110, false);
	game_end();
}
