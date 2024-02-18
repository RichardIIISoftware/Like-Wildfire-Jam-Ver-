/// @description

if !instance_exists(obj_textbox) && global.soviet_lose_over == false
{
	create_textbox(text_id);
}
if !instance_exists(obj_textbox) && global.soviet_lose_over == true
{
	instance_destroy();
}