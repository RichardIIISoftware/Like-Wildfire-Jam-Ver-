/// @description

//set depth to be really low (always show on top of everything else)
depth = global.text_depth;



//define textbox parameters
//set textbox width
textbox_width = 256;
//set textbox height
textbox_height = 48;
//set border around text in textbox
border = 8;
//set line separation of text
line_sep = 12;
//calculate line width (textbox width - both border spaces)
line_width = (textbox_width - (border * 2));
//assign sprite
textbox_spr[0] = spr_textbox;
//assign base sprite frame
textbox_img = 0;
//assign animation speed (0) (this should be "animation fps"/"game native fps")
textbox_img_spd = 0;




//text
//set current page to zero
page = 0;
//set current number of pages being read to 0
page_number = 0;
//set text
text[0] = "";
//set array which measures how many characters are in the line
text_length[0] = string_length(text[0]);
//track all characters
char[0, 0] = "";
//track x position of all characters
char_x[0, 0] = 0;
//track y position of all characters
char_x[0, 0] = 0;
//set var to determine how many characters are being drawn at any one time
draw_char = 0;
//set typing speed
text_speed = 0.2;

//dialogue options
//name the options
option[0] = "";
//id of branching dialogue links
option_link_id[0] = -1;
//option position
option_pos = 0;
//option number
option_number = 0;


//check whether or not a setup has been performed
setup = false;

//sound
//delay before playing a speaking sound (so it doesn't just make a brrrrrr sound)
snd_delay = 15;
//set sound counter to delay time by default
snd_count = snd_delay;

//text effects
//set text defaults
scr_set_defaults_for_text();
//remember where last word ends
last_free_space = 0;
//set a timer variable to track the pauses in text, set to 0
text_pause_timer = 0;
//set amount of frames someone pauses when they speak punctuation
text_pause_time = 16;