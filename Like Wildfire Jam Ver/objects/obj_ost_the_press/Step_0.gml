/// @description



//if not at the press, stop playing theme
if room != rm_the_press_exterior && room != rm_init_work_1 && room != rm_workspace_1 
{
	instance_destroy();
}