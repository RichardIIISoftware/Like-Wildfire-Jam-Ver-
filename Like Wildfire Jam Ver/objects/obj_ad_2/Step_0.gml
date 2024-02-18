/// @description

if self.visible == true
{
	//if is right clicked
	if position_meeting(mouse_x, mouse_y, self) && mouse_check_button(mb_right)
	{
		//turn headline off
		obj_ad_2.visible = false;
		//check current headline
		var _ad_2 = global.active_ad_2;
		if _ad_2 != ""
		//spawn current headline off to the side
		{
			instance_create_layer(irandom_range(11, 60), irandom_range(27, 141), "instances_newspread", global.active_ad_2);
			//reset headline
			global.active_ad_2 = "";
		}
	}
}