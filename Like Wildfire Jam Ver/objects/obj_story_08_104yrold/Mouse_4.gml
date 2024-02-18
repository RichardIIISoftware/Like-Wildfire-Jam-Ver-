/// @description 

if global.can_drag && cursor_selected
{
	//count object as grabbed, exclude all other object from selection
	cursor_grabbed = true;
	//set default draggin coordinated
	mx = (x - mouse_x);
	my = (y - mouse_y);
}

