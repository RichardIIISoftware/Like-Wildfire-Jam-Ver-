/// @description



if position_meeting(mouse_x, mouse_y, obj_activate) || position_meeting(mouse_x, mouse_y, obj_drag_and_drop)
{
	cursor_sprite = spr_cursor_activate;
}
else
{
	cursor_sprite = spr_cursor_plain;
}
