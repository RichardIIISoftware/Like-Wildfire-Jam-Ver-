/// @description


/// @description

/// @description
if position_meeting(mouse_x, mouse_y, id) && mouse_check_button_released(mb_right) && !instance_exists(obj_textbox)
{
	id.text_id = "story_09"
	create_textbox(text_id)
}
/// @description

//if cursor is grabbing something actively
if cursor_grabbed && cursor_selected
{
	//don't let it grab anything else
	global.can_drag = false;
	//follow mouse
	x = mouse_x + mx;
	y = mouse_y + my;
}



/*
//if dropped on headline, set headline active
if place_meeting(x, y, obj_headline) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_headline.visible = false
	{
		obj_headline.image_speed = 0;
		obj_headline.image_index = 1;
		obj_headline.visible = true;
		obj_headline.active = true;
		global.active_headline = title;
		instance_destroy();
	}	
}
*/
//if dropped on story 1
if place_meeting(x, y, obj_story_1) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_story_1.visible = false
	{
		obj_story_1.image_speed = 0;
		obj_story_1.image_index = 1;
		obj_story_1.visible = true;
		obj_story_1.active = true;
		global.active_story_1 = title
		instance_destroy();
	}	
}//if dropped on story 2
if place_meeting(x, y, obj_story_2) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_story_2.visible = false
	{
		obj_story_2.image_speed = 0;
		obj_story_2.image_index = 1;
		obj_story_2.visible = true;
		obj_story_2.active = true;
		global.active_story_2 = title
		instance_destroy();
	}	
}
//if dropped on story 3
if place_meeting(x, y, obj_story_3) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_story_3.visible = false
	{
		obj_story_3.image_speed = 0;
		obj_story_3.image_index = 1;
		obj_story_3.visible = true;
		obj_story_3.active = true;
		global.active_story_3 = title
		instance_destroy();
	}	
}
//if dropped on story 4
if place_meeting(x, y, obj_story_4) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_story_4.visible = false
	{
		obj_story_4.image_speed = 0;
		obj_story_4.image_index = 1;
		obj_story_4.visible = true;
		obj_story_4.active = true;
		global.active_story_4 = title
		instance_destroy();
	}	
}

/*
//if dropped on ad 1
if place_meeting(x, y, obj_ad_1) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_ad_1.visible = false
	{
		obj_ad_1.image_speed = 0;
		obj_ad_1.image_index = 1;
		obj_ad_1.visible = true;
		obj_ad_1.active = true;
		global.active_ad_1 = title
		instance_destroy();
	}	
}
//if dropped on ad 2
if place_meeting(x, y, obj_ad_2) && active == true && mouse_check_button_released(mb_left)
{
	active = false;
	if obj_ad_2.visible = false
	{
		obj_ad_2.image_speed = 0;
		obj_ad_2.image_index = 1;
		obj_ad_2.visible = true;
		obj_ad_2.active = true;
		global.active_ad_2 = title
		instance_destroy();
	}	
}
*/







	if active == false
	{
		instance_destroy();
	}

