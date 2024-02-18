/// @description



//make object alpha pulse between 1 and 0
if global.alpha_flash == false && image_alpha != 0
{
	image_alpha = clamp(image_alpha - alpha_speed, 0, 1);
}
if global.alpha_flash == false && image_alpha == 0
{
	global.alpha_flash = true;
}
if global.alpha_flash == true && image_alpha == 0
{
	image_alpha += alpha_speed;
}
if global.alpha_flash == true && image_alpha != 0
{
	image_alpha = clamp(image_alpha + alpha_speed, 0, 1);
}
if global.alpha_flash == true && image_alpha == 1
{
	global.alpha_flash = false;
}



//advance to main menu if any button is pressed
if keyboard_check(vk_escape) == false
{
	if keyboard_check_pressed(vk_anykey) || mouse_check_button(mb_any)
	{
		audio_play_sound(snd_fx_lamp_on,110, false);
		room_goto_next();
	}
}