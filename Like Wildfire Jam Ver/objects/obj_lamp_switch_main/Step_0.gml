/// @description Insert description here



//turn on and off light when clicked
if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_lamp_switch_main)
{
	if obj_main_menu_bg.sprite_index == spr_main_menu_off
	{
		audio_play_sound(snd_fx_lamp_on, 120, false);
		obj_main_menu_bg.sprite_index = spr_main_menu_on;
	}
	else
	{
		audio_play_sound(snd_fx_lamp_off, 120, false);
		obj_main_menu_bg.sprite_index = spr_main_menu_off;
	}
}
