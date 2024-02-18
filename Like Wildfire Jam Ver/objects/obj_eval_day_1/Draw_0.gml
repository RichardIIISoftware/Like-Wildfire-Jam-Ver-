/// @description Insert description here
// You can write your code in this editor



if stats_adjusted == true
{
	draw_healthbar(66, 67, 81, 183, ((capcom/11)*100), c_black, c_red, c_lime, 3, true, true);

	draw_healthbar(238, 67, 253, 183, ((hapfear/11)*100), c_black, c_red, c_lime, 3, true, true);

	font_add_enable_aa(false);
	draw_text_color(165, 120, string("$" + string(money)), c_black, c_black, c_black, c_black, 1);
}

