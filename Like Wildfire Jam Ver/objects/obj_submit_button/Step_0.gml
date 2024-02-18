/// @description


//if clicked, reassign published globals
if mouse_check_button_released(mb_left) && position_meeting(mouse_x, mouse_y, obj_submit_button)
{
	audio_play_sound(snd_fx_lamp_on, 100, false);
	//--------------------------------
	if !instance_exists(obj_special_headline_1) && global.special_headline_1_published == false
	{
		global.special_headline_1_published = true;
	}

	//-------------------------------------
	if !instance_exists(obj_special_headline_2) && global.special_headline_2_published == false
	{
		global.special_headline_2_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_special_headline_3) && global.special_headline_3_published == false
	{
		global.special_headline_3_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_01_teamster) && global.story_01_published == false
	{
		global.story_01_published = true;
	}
//-----------------------------------------
	if !instance_exists(obj_story_02_nurse) && global.story_02_published == false
	{
		global.story_02_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_03_cafe) && global.story_03_published == false
	{
		global.story_03_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_04_usps) && global.story_04_published == false
	{
		global.story_04_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_05_tree) && global.story_05_published == false
	{
		global.story_05_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_06_markets) && global.story_06_published == false
	{
		global.story_06_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_07_b29s) && global.story_07_published == false
	{
		global.story_07_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_08_104yrold) && global.story_08_published == false
	{
		global.story_08_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_09_weather1) && global.story_09_published == false
	{
		global.story_09_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_10_teargas) && global.story_10_published == false
	{
		global.story_10_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_11_jurors) && global.story_11_published == false
	{
		global.story_11_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_12_philippines) && global.story_12_published == false
	{
		global.story_12_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_13_denmark) && global.story_13_published == false
	{
		global.story_13_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_14_clothing) && global.story_14_published == false
	{
		global.story_14_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_15_flats) && global.story_15_published == false
	{
		global.story_15_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_16_buscrash) && global.story_16_published == false
	{
		global.story_16_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_17_coney) && global.story_17_published == false
	{
		global.story_17_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_18_jeep) && global.story_18_published == false
	{
		global.story_18_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_19_twister) && global.story_19_published == false
	{
		global.story_19_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_20_tracks) && global.story_20_published == false
	{
		global.story_20_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_21_theater) && global.story_21_published == false
	{
		global.story_21_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_22_kidsbook) && global.story_22_published == false
	{
		global.story_22_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_23_opera) && global.story_23_published == false
	{
		global.story_23_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_24_ad_flowers) && global.story_24_published == false
	{
		global.story_24_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_25_ad_jewelers) && global.story_25_published == false
	{
		global.story_25_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_26_ad_furs) && global.story_26_published == false
	{
		global.story_26_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_27_ad_mtro) && global.story_27_published == false
	{
		global.story_27_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_28_ad_auto) && global.story_28_published == false
	{
		global.story_28_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_29_ad_zyx) && global.story_29_published == false
	{
		global.story_29_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_30_ad_bowling) && global.story_30_published == false
	{
		global.story_30_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_31_ad_fashion) && global.story_31_published == false
	{
		global.story_31_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_32_ad_books) && global.story_32_published == false
	{
		global.story_32_published = true;
	}
	
	//-----------------------------------------
	if !instance_exists(obj_story_33_ad_guns) && global.story_33_published == false
	{
		global.story_33_published = true;
	}
	
	
	
	
	room_goto_next();
}
