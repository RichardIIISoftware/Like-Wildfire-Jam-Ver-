/// @description Insert description here



//turn on and off light when clicked
if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_lamp_switch_work)
{
	if obj_workspace_bg.sprite_index == spr_workspace_off
	{
		audio_play_sound(snd_fx_lamp_on, 120, false);
		obj_workspace_bg.sprite_index = spr_workspace_on;
	}
	else
	{
		audio_play_sound(snd_fx_lamp_off, 120, false);
		obj_workspace_bg.sprite_index = spr_workspace_off;
	}
}
