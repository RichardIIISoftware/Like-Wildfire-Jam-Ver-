/// @description

if !instance_exists(obj_textbox) && global.boss_done_tutorial = false
{
	create_textbox(text_id);
}
if !instance_exists(obj_textbox) && global.boss_done_tutorial = true
{
	instance_destroy();
}