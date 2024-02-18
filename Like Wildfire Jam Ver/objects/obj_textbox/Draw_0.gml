/// @description


key_yes = keyboard_check_pressed(vk_space);
textbox_x = camera_get_view_x(view_camera[0]);
textbox_y = camera_get_view_y(view_camera[0]) + 176;



//setup : if a setup has not been performed
if setup == false
{
	// tell that a setup has been performed
	setup = true;
	//set font to font_text
	draw_set_font(global.font_text);
	//set vertical alignment
	draw_set_valign(fa_top);
	//set horizontal alignment
	draw_set_halign(fa_left);
	
	
	
	//loop through pages
	//loop
	for (var _p = 0; _p < page_number; _p ++)
	{
		//return text length of page
		text_length[_p] = string_length(text[_p]);
		//distance from the left side of the screen
		//if speaker present on left
		text_x_offset[_p] = 52;
		//speaker portrait
		portrait_x_offset[_p] = 4;
		//if speaker present on right
		if speaker_side[_p] == -1
		{
			text_x_offset[_p] = 4;
			portrait_x_offset[_p] = 260
		}
		//if no speaker sprite
		if speaker_spr[_p] == noone
		{
			//if textbox is centered
			text_x_offset[_p] = 32;
		}
		
		
		
		//set each individual character and find where the text should be broken
		for (var _c = 0; _c < text_length[_p]; _c ++)
		{
			//since strings start at 1, set _char_pos to 1 instead of 0 to help keep track of the position better
			var _char_pos = (_c + 1);
			
			//store each character into the char[] array
			char[_c, _p] = string_char_at(text[_p], _char_pos);
			
			//get width of current line
			var _text_up_to_char = string_copy(text[_p], 1, _char_pos);
			var _current_text_w = (string_width(_text_up_to_char) - string_width(char[_c, _p]));
			
			//get last free space
			if char[_c, _p] == " "
			{
				last_free_space = (_char_pos + 1)
				//retrieve line breaks
				//if width of current line is above available line width: add a line break // include buffer for right border as most of the characters are slanted
				if ((_current_text_w - line_break_offset[_p]) > (line_width - (border * 4)))
				{
					//record position of line break in line_break_pos[], start counting line break number in line_break_num[], and try to find the last free space in the line of text
					line_break_pos[line_break_num[_p], _p] = last_free_space;
					//add one to the line break number, since there is now another line break
					line_break_num[_p] ++;
					//call all text up to the last free space before the line break
					var _text_up_to_last_space = string_copy(text[_p], 1, last_free_space);
					//call the last free space as a string
					var _last_free_space_string = string_char_at(text[_p], last_free_space);
					//offset the next printed line to not include the already printed text
					line_break_offset[_p] = (string_width(_text_up_to_last_space) - string_width(_last_free_space_string));
				}
			}
			
		}
		//retrieve each character's coordinates on-screen
			for (var _c = 0; _c < text_length[_p]; _c ++)
			{
				var _char_pos = (_c + 1);
				//set vars _text_x and _text_y; default them
				var _text_x = (textbox_x + text_x_offset[_p] + border);
				var _text_y = textbox_y;
				//retrieve current line width
				var _text_up_to_char = string_copy(text[_p], 1, _char_pos);
				var _current_text_w = (string_width(_text_up_to_char) - string_width(char[_c, _p]));
				//set variable for how many lines we are drawing down in the textbox
				var _text_line = 0;
				
				//check for line breaks to calcualte what line we are on
				for (var _lb = 0; _lb < line_break_num[_p]; _lb ++)
				{
					//if current character is post-line-break
					if _char_pos >= line_break_pos[_lb, _p]
					{
						//retrieve and store current text width after line break
						var _string_copy = string_copy(text[_p], line_break_pos[_lb, _p], (_char_pos - line_break_pos[_lb, _p]));
						_current_text_w = string_width(_string_copy);
						//store line character should be on // determines y coord
						_text_line = (_lb + 1); // +1 because _lb (line break) starts at 0 and strings start at 1
					}
				}
				//modify x and y coordinates using information acquired post-line-break
				char_x[_c, _p] = (_text_x + _current_text_w);
				char_y[_c, _p] = (_text_y + (_text_line*line_sep));
			}
	}
}



//type text
//if there is no pause, type
if text_pause_timer <= 0
{
	//if current character is less than the possible amount of characters to be typed on that page
	if draw_char < text_length[page]
	{
		//add text speed to current character
		draw_char += text_speed;
		//set max values for draw_char to be 0 and the page's text length
		draw_char = clamp(draw_char, 0, text_length[page]);
		//set a variable which returns the exact character ord currently being typed
		var _check_char = string_char_at(text[page], draw_char);
		//if speaker reaches a full stop
		if _check_char == "." || _check_char == "!" || _check_char == "?"
		{
			//set timer
			text_pause_timer = text_pause_time;
			//if speech sound is not currently playing (add this if the speech sound is a VERY short wav file.)
			/*
			if !audio_is_playing(speak_snd[page])
			{
			*/
				//play sound
				audio_play_sound(speak_snd[page], 8, false, .75);
			/*
			}
			*/
		}
		//if speaker reaches punctuation
		else if _check_char == "," || _check_char == ":" || _check_char == ":"
		{
			//set half of timer
			text_pause_timer = (text_pause_time/4)
			//play sound
			audio_play_sound(speak_snd[page], 8, false, .75, , random_range(0.8, 0.85));
		}
		else
		{
			//typing sound when there is no punctuation
			if snd_count < snd_delay
			{
				//increase snd_count
				snd_count ++;
			}
			else
			{
				//reset snd_count
				snd_count = 0;
				//play sound
				audio_play_sound(speak_snd[page], 8, false, .75, , random_range(0.8, 0.85));
			}
		}
	}
}
else
{
	//while not typing, count timer down 1 every frame
	text_pause_timer --;
}


//skip through pages
if key_yes
{
	//if typing complete
	if draw_char == text_length[page]
	{
		//next page : the "- 1" is because the page number starts at 0
		if page < (page_number - 1)
		{
			//add 1 to current page no.
			page ++;
			//start at the beginning of the new page
			draw_char = 0;
		}
		//else, destroy textbox
		else
		{
			//link text to next option
			if option_number > 0
			{
				create_textbox(option_link_id[option_pos]);
			}
			instance_destroy();
		}
	}
	//if not done typing
	else
	{
		//immediately fill out page
		draw_char = text_length[page];
	}
}




//draw textbox
var _textbox_x = textbox_x + text_x_offset[page];
var _textbox_y = textbox_y;
//animate
textbox_img += textbox_img_spd;
textbox_spr_w = sprite_get_width(textbox_spr[page]);
textbox_spr_h = sprite_get_height(textbox_spr[page]);
//draw speaker
//if speaker has been specified
if speaker_spr[page] != noone
{
	//set sprite index to appropriate speaker
	sprite_index = speaker_spr[page];
	//stop animation if speaker is done talking
	if draw_char == text_length[page]
	{
		image_index = 0;
	}
	//set _speaker_x to textbox_x + portrait_x_offset
	var _speaker_x = (textbox_x + portrait_x_offset[page]);
	//if speaker is on the right
	if speaker_side[page] == -1
	{
		//push sprite to the right after vertically-flipping it
		_speaker_x += sprite_width;
	}
	//draw speaker box //+.1 is for the percentage the speaker box is larger than the sprite of the speaker portrait i.e. .25 means speaker box is 25% larger than the speaker's sprite
	draw_sprite_ext(textbox_spr[page], textbox_img, (textbox_x + portrait_x_offset[page]), textbox_y, (sprite_width/textbox_spr_w), ((sprite_height/textbox_spr_h)+.1), 0, c_white, 1);
	//draw portrait
	draw_sprite_ext(sprite_index, image_index, _speaker_x, textbox_y, speaker_side[page], 1, 0, c_white, 1);
}
//draw rear of textbox
draw_sprite_ext(textbox_spr[page], textbox_img, _textbox_x, _textbox_y, (textbox_width / textbox_spr_w), (textbox_height / textbox_spr_h), 0, c_white, 1);



//text options
if draw_char == text_length[page] && page == (page_number - 1)
{
	
	//options selection
	option_pos += keyboard_check_pressed(ord("W")) - keyboard_check_pressed(ord("S"));
	option_pos = clamp(option_pos, 0, (option_number - 1));
	
	//draw options
	var _op_space = 14;
	var _op_bord = 4;
	for (var _op = 0; _op < option_number; _op ++)
	{
		//option box
		var _o_w = (string_width(option[_op]) + (_op_bord * 2));
		draw_sprite_ext(textbox_spr[page], textbox_img, _textbox_x + 10, ((_textbox_y - ((_op_space * option_number) + (_op_space * _op))) + 12), (_o_w / textbox_spr_w), ((_op_space - 1) / textbox_spr_h), 0, c_white, 1);
	
		//selection point
		if option_pos == _op
		{
			draw_sprite(spr_pointing_hand, 0, _textbox_x - 8, ((_textbox_y - ((_op_space * option_number) + (_op_space * _op))) + 12));
		}
			
		//option text
		draw_text((_textbox_x + _op_bord) + 10, (_textbox_y - ((_op_space * option_number) + (_op_space * _op) - 10)), option[_op]);
	}
}


//draw text
for (var _c = 0; _c < draw_char; _c ++)
{
	//text
	draw_text(char_x[_c, page], char_y[_c, page], char[_c, page]);
}
