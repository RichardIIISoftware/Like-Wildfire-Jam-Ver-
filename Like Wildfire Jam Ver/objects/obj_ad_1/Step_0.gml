/// @description

if self.visible == true
{
	//if is right clicked
	if position_meeting(mouse_x, mouse_y, self) && mouse_check_button(mb_right)
	{
		//turn headline off
		obj_ad_1.visible = false;
		//check current headline
		var _ad_1 = global.active_ad_1;
		if _ad_1 = ""
		//spawn current headline off to the side
		{
			instance_create_layer(irandom_range(11, 60), irandom_range(27, 141), "instances_newspread", global.active_ad_1);
			//reset headline
			global.active_ad_1 = "";
		}
	}
}

