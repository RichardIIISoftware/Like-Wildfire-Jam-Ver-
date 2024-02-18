/// @description



//destroy when room advances to "house_exterior"
if room != rm_init && room != rm_attention && room != rm_logo && room != rm_main_menu
{
	instance_destroy();
}