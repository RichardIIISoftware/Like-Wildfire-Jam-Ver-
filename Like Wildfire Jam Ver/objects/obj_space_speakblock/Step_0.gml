/// @description


if keyboard_check_released(vk_space)
{
	create_textbox(text_id)
	//destroy "press space on intro screen"
	if room == rm_house_exterior && instance_exists(obj_press_space_intro)
	{
		instance_destroy(obj_press_space_intro);
	}
	else if room == rm_the_press_exterior && instance_exists(obj_press_space_intro)
	{
		instance_destroy(obj_press_space_intro);
	}
	instance_destroy();
}
