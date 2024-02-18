/// @description

//if is visible
if self.visible == true
{
	//if is right clicked
	if position_meeting(mouse_x, mouse_y, self) && mouse_check_button(mb_right)
	{
		//turn headline off
		obj_story_4.visible = false;
		//check current headline
		var _story_4 = global.active_story_4;
		if _story_4 != ""
		//spawn current headline off to the side
		{
			instance_create_layer(irandom_range(11, 60), irandom_range(27, 141), "instances_newspread", global.active_story_4);
			//reset headline
			global.active_story_4 = "";
		}
	}
}


