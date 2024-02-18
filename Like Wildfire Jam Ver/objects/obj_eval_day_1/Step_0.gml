/// @description 
if stats_adjusted == false{
	if capcom_adjusted == false
	{
		capcom = ((5) + global.story_01_published - global.story_06_published + global.story_07_published - global.story_10_published - global.story_13_published - global.story_14_published + global.story_15_published - global.story_17_published + global.story_18_published + global.story_23_published);		capcom_adjusted = true;
	
	}


	if hapfear_adjusted == false
	{
		hapfear = ((5) + global.story_02_published - global.story_03_published + global.story_05_published + global.story_08_published + global.story_09_published - global.story_10_published + global.story_12_published + global.story_15_published - global.story_16_published + global.story_17_published - global.story_18_published - global.story_19_published - global.story_20_published - global.story_21_published + global.story_22_published + global.story_23_published);
		hapfear_adjusted = true;

	}
	
	if money_adjusted == false
	{
		money = money + ((global.story_24_published + global.story_25_published + global.story_26_published + global.story_27_published + global.story_28_published + global.story_29_published + global.story_30_published + global.story_31_published + global.story_32_published + global.story_33_published)*19.95);
		
		money_adjusted = true;
	}
	
	stats_adjusted = true;
}