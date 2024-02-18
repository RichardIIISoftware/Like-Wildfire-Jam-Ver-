/// @description 

//if lmb released
if mouse_check_button_released(mb_left)
{
	//stop grabbing object
	cursor_grabbed = false;
	//let it grab things again
	global.can_drag = true;
}


