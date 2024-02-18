/// @description

//if lmb pressed
if mouse_check_button_pressed(mb_left)
{
	//retrieve any drag-and-drop at current mouse position
	var _lowest_depth = instance_position(mouse_x, mouse_y, obj_drag_and_drop);
	//if there is nothing at mouse position, do nothing; if there is something different, execute code
	if _lowest_depth != noone
	{
		with obj_drag_and_drop
		{
			//check for more than one object at current mouse position
			if position_meeting(mouse_x, mouse_y, id)
			{
				//retrieve depth of secondary object
				if depth < _lowest_depth.depth
				{
				_lowest_depth = id;
				}
			}
			//stop trying to select objects
			id.cursor_selected = false;
		}
		//make the object closest to the camera the selected one
		_lowest_depth.cursor_selected = true;
		//halt overlapping with selected object by raising current object
		_lowest_depth.depth = global.last_depth;
		//lowers last depth (can only be done 10,000 times per game, due to the depth limit of -1000)
		global.last_depth -= 0.1
	}
}







