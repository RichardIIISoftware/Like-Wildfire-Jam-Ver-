/// @description

if !instance_exists(obj_textbox) && !instance_exists(obj_press_space_intro) && global.letter_trashed == false
{
	room_goto(rm_the_press_exterior);
}

if!instance_exists(obj_textbox) && !instance_exists(obj_press_space_intro) && global.letter_trashed == true
{
	room_goto(rm_disclaimer);
}