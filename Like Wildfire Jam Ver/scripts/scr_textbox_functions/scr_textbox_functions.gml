//set defaults for text
function scr_set_defaults_for_text()
{
	//find position where line breaks
	line_break_pos[0, page_number] = global.text_max_breaks;
	//what line break we are on
	line_break_num[page_number] = 0;
	//when line breaks, offset back to the start of the textbox
	line_break_offset[page_number] = 0;
	
	//set deafault textbox sprite to default textbox
	textbox_spr[page_number] = spr_textbox;
	//set default speaker sprite to nothing
	speaker_spr[page_number] = noone;
	//set default speaker side to left
	speaker_side[page_number] = 1;
	//set default speaker sound
	speak_snd[page_number] = snd_speak_default;
}



/// @param text
/// @param [character]
/// @param [speaker side]
function scr_text(_text)
{
	//set text defaults
	scr_set_defaults_for_text();
	//make array "text", assign it scr_text's parameters
	text[page_number] = _text;
	
	//get character info
	if argument_count > 1
	{
		switch(argument[1])
		{
			case "boss":
			//load boss portrait
			speaker_spr[page_number] = spr_boss_portrait;
			//set boss textbos to default textbox
			textbox_spr[page_number] = spr_textbox;
			//set speaker voice
			speak_snd[page_number] = snd_speak_boss;
			break;
			//do the following if you want to add more speaker emotions in the future
			/*
			case "character emotion" :
			//load character portrait
			speaker_spr[page_number] = <spr_portrait_character_emotion>;
			//set textbox sprite to appropriate
			textbox_spr[page_number] = <spr_textbox_character>;
			//break
			break;
			
			//duplicate the above for any other characters
			*/
		}
	}
	
	//set side character is speaking from
	if argument_count > 2
	{
		speaker_side[page_number] = argument[2];
	}
	
	
	
	
	//add one to page number
	page_number ++;
}

///@param option
///@param link_id
function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	option_number ++;
}



///@param text_id
function create_textbox(_text_id)
{
	with (instance_create_depth(0, 0, global.text_depth, obj_textbox))
	{
		scr_script(_text_id);
	}
}
