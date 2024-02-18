/// @description

//make object alpha pulse between 1 and 0
if global.alpha_flash == false && image_alpha != 0
{
	image_alpha = clamp(image_alpha - alpha_speed, 0, 1);
}
if global.alpha_flash == false && image_alpha == 0
{
	global.alpha_flash = true;
}
if global.alpha_flash == true && image_alpha == 0
{
	image_alpha += alpha_speed;
}
if global.alpha_flash == true && image_alpha != 0
{
	image_alpha = clamp(image_alpha + alpha_speed, 0, 1);
}
if global.alpha_flash == true && image_alpha == 1
{
	global.alpha_flash = false;
}
