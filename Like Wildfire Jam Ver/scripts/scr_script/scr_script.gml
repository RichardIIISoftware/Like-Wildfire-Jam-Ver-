/// @param text_id
function scr_script(_text_id)
{
	switch(_text_id)
	{
		//---------------------INTRO AT HOME ---------------------------
		case "intro":
		scr_text("SUNDAY, AUGUST 18TH, 1946.");
		scr_text("6:25 A.M.");
		scr_text("The War is over.");
		scr_text("You thumb your dog tags.");
		scr_text("You know the feeling of your name's imprint on them like a blind man knows braille.");
		scr_text("...");
		scr_text("Your front door's mail slot opens, depositing another stack of bills.");
		scr_text("Your 'free' house now requires payments from an income you do not have.");
		scr_text("You are well overdue.");
		scr_text("If you do not get the landman his $200.00 by the end of this week, you'll be on the streets.");
		scr_text("And there's no filing for a Fed- eral job without an address.");
		scr_text("...");
		scr_text("There's something else here.");
		scr_text("A letter.");
		scr_text("You must not have seen it under all the bills.");
		scr_text("Open it?");
			scr_option("Trash it.", "trash it")
			scr_option("Open it.", "open it")
			break;
			
			//-----------trash the letter------------------------------
			case "trash it":
			scr_text("You throw the envelope into the trash can by the door.");
			scr_text("...");
			scr_text("You awake the next morning to a pounding at the front door,");
			scr_text("followed by the fleeting sound of a car's engine.");
			scr_text("No person greets you on your p- orch.");
			scr_text("A paper, stapled to the frame, quite clearly spells out your cur- rent situation.");
			scr_text("'NOTICE OF EVICTION'");
			scr_text("Huh.");
			scr_text("Guess it had to happen sometime.");
			scr_text("Didn't expect it to be so soon.");
			scr_text("...");
			scr_text("The letter is no longer in the trash can.");
			scr_text("Perhaps it was a dream.");
			scr_text("You don't make it long on the str- eets.");
			scr_text("Life doesn't give you second chan- ces.");
			scr_text("Good thing this is fictional.");
			scr_text("...");
			scr_text("ENDING 1 OF 3 - 'MAIL SCHMAIL'");
			global.letter_trashed = true;
			break;
			
			//----------------------------open the letter--------------------------//
			case "open it":
			scr_text("The letter reads in crude black type:");
			scr_text("'In accordance with the Employment Act of February 20th, 1946,");
			scr_text("Chapter 33, Section 2, 60 Statute 23:");
			scr_text("It is the continuing policy and responsibility of the Federal");
			scr_text("Government to coordinate and uti- lize all its plans, functions, and resources");
			scr_text("for the purpose of creating and maintaining conditions under which there will be");
			scr_text("afforded useful employment oppor- tunities,");
			scr_text("including self-employment, for those able, willing, and seeking to work.'");
			scr_text("... it continues on like this for a while...");
			scr_text("'Citizen at this address has been afforded an employment opportunity,");
			scr_text("if he is able, willing, and seeking.");
			scr_text("Report Sunday, August 18th, 1946, 7:00 A.M., to The Press Building, 100 Main Street.'");
			scr_text("The letter ends.");
			scr_text("... there's some writing in pen at the bottom.");
			scr_text("It reads:");
			scr_text("'From what I hear, you cannot af- ford to be anything but.'");
			scr_text("...");
			scr_text("It is not signed.");
			scr_text("...");
			scr_text("It is still only 6:30 A.M. - enough time to report to The Press Buil- ding.");
			scr_text("You enter your '39 beater and hoof it to Main Street.");
			break;
			
			
		//---------------------------The Press-----------------------	
		case "the_press_intro":
		scr_text("SUNDAY, AUGUST 18TH, 1946.");
		scr_text("7:00 A.M.");
		scr_text("Hey, you'se tha vet?", "boss");
		scr_text("...");
		scr_text("Good, yer on. We's been short on tha spread.", "boss");
		scr_text("The what?");
		scr_text("Tha newspread, ya nincompoop.", "boss");
		scr_text("What? No one told ya what you'se gonna be doin'?", "boss");
		scr_text("Lay out 'morrow's lines? Workin' 'bove tha fold? That kinda thing?", "boss");
		scr_text("...");
		scr_text("Damn, feds really got you'se up to yer knees.", "boss");
		scr_text("Must really need tha work, huh?", "boss");
		scr_text("...");
		scr_text("Quiet type, ain'tchya?", "boss");
		scr_text("...");
		scr_text("Anyhows, I gots me a war up on ya - so I'm yer superior.", "boss");
		scr_text("Capisce?", "boss");
		scr_text("Lead the way.");
		scr_text("Good. Gumption is what you'se got. Spunk. Like ta see it.", "boss");
		scr_text("A good Yank knows hows 'e talks to 'is superiors.", "boss");
		scr_text("Just listen ta yers truly and you'se -a gonna be a-okay, kid. Alright?", "boss");
		break;
		
		
		//-----------------------------boss tutorial---------------------------
		case "work_1_boss":
		
		scr_text("This 'ere's ya station.", "boss");
		scr_text("Damn is it dark in here.", "boss");
		scr_text("Pull the light, will ye?", "boss");
		scr_text("...", "boss");
		scr_text("...");
		scr_text("Aight, let's get us started 'ere.", "boss");
		scr_text("Lines from tha pads and cameraboys come in the top left.", "boss");
		scr_text("Any mail's-a gonna come in there too.", "boss");
		scr_text("Open it - Don't. I don't care. 'S up ta youse.", "boss");
		scr_text("It's a bit fubar at the moment,", "boss");
		scr_text("So you're gonna have to clear a space before you go reading any- thing.", "boss");
		scr_text("Read the lines that come in from our flatfeet and choose what goes on the spread.", "boss");
		scr_text("Pick up the papers with LMB,", "boss");
		scr_text("And once they're in a secluded spot, nice and quiet-like...", "boss");
		scr_text("Read the lines with RMB... whatever that means.", "boss");
		scr_text("'S just the spiel I was told ta give ye.", "boss");
		scr_text("Red button's there if you'se fuck up.", "boss");
		scr_text("Use RMB on the newspread itself to return the page to the pile.", "boss");
		scr_text("Green button's for when's you'se is all nice and satisfied.", "boss");
		scr_text("...",);
		scr_text("You gotsta put tha stories in their proper places, too, see?", "boss");
		scr_text("I ain't havin' no futz-up like yer- self putting an ad", "boss");
		scr_text("for rose-shaped soap cakes as my headline.", "boss");
		scr_text("If I catch you doin' it, I'll give the story to one of our bigger papers.", "boss");
		scr_text("Assumin' ya can read - the table is labeled by yers truly.", "boss");
		scr_text("But I'ma assume ye can't read - just look at ya.", "boss");
		scr_text("...");
		scr_text("Now 'member:", "boss");
		scr_text("Some lines-a gonna make folks gay.", "boss");
		scr_text("Some lines-a gonna make folks fr- aidy.", "boss");
		scr_text("Keep 'em in tha middle.", "boss");
		scr_text("Gay folks is complacent, see?", "boss");
		scr_text("Ain't buyin' what we's sellin'.", "boss");
		scr_text("Scaredy folks is not buyin' no paper might set 'em over the edge.", "boss");
		scr_text("...if you'se catch my meanin'.", "boss");
		scr_text("Now, we's under lots-a pressure from them g-men", "boss");
		scr_text("to keep folks up with Uncle Sam, catch?", "boss");
		scr_text("Can't 'ave no one goin' Red 'cause o' our paper.", "boss");
		scr_text("Bu-u-u-t... we's also under lots-a pressure", "boss");
		scr_text("from the moustachio'd Soviet 'imself.", "boss");
		scr_text("Can't have our War allies thinkin' we up and turned on 'em post-haste, see?", "boss");
		scr_text("So, keep tha patriotic sen-ti-men- ta-li-ties down tha middle too.", "boss");
		scr_text("Less Red tape that way, heh.", "boss");
		scr_text("Be a good little spreadboy,", "boss");
		scr_text("and you'll start makin' some pennies.", "boss");
		scr_text("Be a bad little spreadboy...", "boss");
		scr_text("Let's just say ye can make some dirty pennies.", "boss");
		scr_text("We ain't clean in this 'ere biz, kid.", "boss");
		scr_text("Lots-a... ink.", "boss");
		scr_text("...");
		scr_text("Yeah, ink...", "boss");
		scr_text("...");
		scr_text("Good luck, vet.", "boss");
		scr_text("Always got space in tha mailroom if you'se ain't cuttin'.", "boss");
		scr_text("Catch me?", "boss");
		scr_text("...");
		scr_text("...", "boss");
		scr_text("Alls-a-righty. You'se get off at 8:00.", "boss");
		scr_text("Sees ya 'morrow, spreadboy.", "boss");
		scr_text("If you'se-a wantin' ta keep that purty house-a yers.", "boss");	
		global.boss_done_tutorial = true;
		break;
		
		
		
		
		//--------------------------headlines------------------------------
		case "story_01":
		scr_text("18 TEAMSTERS INDICTED FOR EXTOR- TION - FACE 1-MAN JURY");
		break;
		
		case "story_02":
		scr_text("STUDENT NURSE SAVES PATIENT FROM SEVENTH STORY WINDOW");
		break;
		
		case "story_03":
		scr_text("POLICE CHIEF INJURED IN CAFE FIGHT OVER NEGRO ISSUE");
		break;
				
		case "story_04":
		scr_text("POST OFFICE PICKETED BY 16 IN PROTEST OF 6 CONVICTED SERVICE OBJECTORS");
		break;
		
		case "story_05":
		scr_text("MAN STUCK IN TREE AFTER BRANCH FELLS LADDER");
		break;
		
		case "story_06":
		scr_text("ALL MEAT MARKETS CLOSED - HOUSE- WIVES BUY FOOD DIRECT FROM FARM");
		break;
		
		case "story_07":
		scr_text("B-29 SUPER-FORTRESSES END BOMBING TESTS IN GERMANY");
		break;
		
		case "story_08":
		scr_text("MAN REJECTED FROM CIVIL WAR ENLISTMENT STILL ALIVE - AGE 104");
		break;
		
		case "story_09":
		scr_text("WEATHER TO COOL - TOMORROW’S HIGH IN MID-80S")
		break;
		
		case "story_10":
		scr_text("U.S. POLICE TEAR GAS MEXICAN CROWD IN MEXICO CITY");
		break;
		
		case "story_11":
		scr_text("NATION’S FIRST FEMALE GRAND JUR- ORS SWORN IN - 4 IN TOTAL");
		break;
		
		case "story_12":
		scr_text("POW VET LAUNCHES HANDMADE SHIP - TO SAIL TO PHILIPPINES WITH WIFE AND DOG");
		break;
		
		case "story_13":
		scr_text("DENMARK AND SOVIET UNION SIGN 5-YEAR TRADE AGREEMENT");
		break;
		
		case "story_14":
		scr_text("CLOTHING COSTS AT ALL-TIME HIGH - SCHOOL UNIFORM SETS START AT $500 - UP TO $1,500");
		break;
		
		case "story_15":
		scr_text("'FLATS' NEW FAD FOOTWEAR AMONGST COLLEGE-AGE GIRLS");
		break;
		
		case "story_16":
		scr_text("BUS OVERTURNS ON HIGHWAY #36 - 32 ON-BOARD - THREE OR FOUR DEAD, MANY INJURED");
		break;
		
		case "story_17":
		scr_text("CONEY ISLAND PARK TO BE DEMO- LISHED FOR NEW VET APARTMENTS - CHEAP HOUSING");
		break;
		
		case "story_18":
		scr_text("MOTORCYCLE COLLIDES WITH JEEP - DRIVER KILLED");
		break;
		
		case "story_19":
		scr_text("TWISTER STRIKES, KILLING SEVEN - HOSPITALS FULL - CAMP DESTR- OYED");
		break;
		
		case "story_20":
		scr_text("TRAINS STOPPED - TORNADO THROWS HIGHWAY GRADER ONTO TRACKS");
		break;
		
		case "story_21":
		scr_text("TWISTER INJURES 8- TRAPS 300 MORE PERSONS IN THEATER");
		break;

		case "story_22":
		scr_text("AIR FORCE VETS SELF-PUBLISH CHIL- DREN’S BOOK - GREAT SUCCESS");
		break;
		
		case "story_23":
		scr_text("TRUMAN'S DAUGHTER CONTINUES PUR- SUING OPERA CAREER");
		break;
		
		case "story_24":
		scr_text("Grands Flower Shop: Flowers fre- sher than the milk on your porch!");
		break;
		
		case "story_25":
		scr_text("Plumbman’s Jewelers: New blue and white diamonds! Show her you love her!");
		break;
		
		case "story_26":
		scr_text("Boothe Furs: New fur coats! Over 1,000 styles and sizes!")
		break;
		
		case "story_27":
		scr_text("MTRO 1460: Tune in to frequency 1460 for the best serials in the nation!");
		break;
		
		case "story_28":
		scr_text("Thinway Motors: All body jobs serviced! Fastest wrenches in the West!");
		break;
		
		case "story_29":
		scr_text("ZYX Transport: Van drivers wanted for routes to New York and Calif- ornia States. Return loads required. Call 3210.");
		break;
		
		case "story_30":
		scr_text("Pasta Bowl: Fully furnished bowling alley - dinner available. Now air- conditioned!");
		break;
		
		case "story_31":
		scr_text("Fetching Fashions: Ladies fall fash- ions now in stock! All-wool suits and coats $21 and up.");
		break;
		
		case "story_32":
		scr_text("Tamer’s Bookstore: Largest selection of your favorite titles!");
		break;
		
		case "story_33":
		scr_text("Hunters Haven: Best gun store in the Mid-West!");
		break;
				
		
		
		//special headlines---------------------------------------------------
		case "special_headline_1":
		scr_text("[DO NOT REPORT ANYTHING]");
		break;
		
		case "special_headline_2":
		scr_text("SECOND KILLING SHARES SAME M.O. AS LAST WEEK’S - KILLSPREE SUS- PECTED");
		break;
		
		case "special_headline_3":
		scr_text("SECOND KILLING WORK OF 'THE SUR- GEON' - MURDERS SWIFT AND PRE- CISE");
		break;
		
		
		//----------------------letters day 1---------------------//
		
		case "police_letter_day_1":
		scr_text("There is a blue letter.");
		scr_text("'We have received violent threats upon your publication.");
		scr_text("We believe these threats to come from a serial murderer in your vicinity.");
		scr_text("By order of A. Johnson, Chief of Police:");
		scr_text("Direct to this precinct all info- rmation regarding killings that match the M.O. of last week's death.");
		scr_text("DO NOT print news of any serial killings until we get the situation under police control.");
		scr_text("We thank you in advance for your immediate and continued cooperation'.");
		scr_text("It is not signed, as was likely unnecessary.");
		scr_text("There is nothing else enclosed.");
		break;
		
		case "killer_letter_day_1":
		scr_text("There is an odd letter.");
		scr_text("The envelope is made of various scraps of newsprint.");
		scr_text("It smells strongly of gasoline.");
		scr_text("The letter inside contains no hand- writing,");
		scr_text("but small headline letters cut out and pasted together.");
		scr_text("'To the current head of the new- spread,");
		scr_text("Good morning.");
		scr_text("Last week, my patient lost their life.");
		scr_text("Last night, my patient lost their life.");
		scr_text("I have informed the local police precinct that the previous two killings are my own work.");
		scr_text("They will likely attempt to contact you regarding the situation.");
		scr_text("...");
		scr_text("Tonight, I have another patient.");
		scr_text("If you do not cooperate, they will be the third to lose their life.");
		scr_text("You are to refer to me in tom- orrow's headline.");
		scr_text("You are to describe the previous two killings in detail.");
		scr_text("These two things I ask, so that I may not ask a third.");
		scr_text("...");
		scr_text("Sincerely,");
		scr_text("'The Surgeon'");
		scr_text("There is nothing else enclosed.");
		scr_text("Your hands reek of gasoline.");
		break;
		
		case "soviet_lose":
		scr_text("The American Dream...");
		scr_text("It seems you veered too far from it.");
		scr_text("After just one day on the paper, you return home to an unusual si- ght.");
		scr_text("Two men in all-black suits and aviator glasses are reclining on your porch.");
		scr_text("It's 8:30 P.M. - much too dark for aviator's lenses.");
		scr_text("A large black delivery truck is parked in the street.");
		scr_text("As you make your way up the side- walk, one of the men stands.");
		scr_text("'Sir, we have some questions for you regarding alleged un-American activities.'");
		scr_text("...");
		scr_text("'If you could please step into the vehicle.'");
		scr_text("...");
		scr_text("You never saw your house again.");
		scr_text("At least you were dying with mon- ey in your pockets.");
		scr_text("...");
		scr_text("Wow... being dead gives you a lot of time to think, huh?");
		scr_text("Did you love the life you made for yourself?");
		scr_text("Did you make others' lives worth living?");
		scr_text("Did you print what you believed in that paper or did you");
		scr_text("try to appeal to certain people?");
		scr_text("How far are you willing to stretch your morals?");
		scr_text("...");
		scr_text("You have so little time on this earth.");
		scr_text("Go do something with it.");
		scr_text("Go make games.");
		scr_text("ENDING 2 OF 3 - 'UNAMERICAN ACTIVITY'");
		global.soviet_lose_over = true;
		break;
		
		case "america_lose":
		scr_text("The American Dream...");
		scr_text("It seems almost as though you were Icarus to the sun.");
		scr_text("After just one day on the paper, you return home to an unusual si- ght.");
		scr_text("Why- it's not your house at all!");
		scr_text("A pyramid has taken its place, and above a bright, gleaming eye!");
		scr_text("Its voice booms:");
		scr_text("'BE NOT AFRAID'");
		scr_text("YOU FELL ASLEEP AT THE WHEEL ON THE DRIVE HOME.");
		scr_text("YOUR BODY WILL FEED THE CROWS AND NURTURE THE SOIL.");
		scr_text("...");
		scr_text("Things like patriotism and economic manifestos seem a little");
		scr_text("pointless now that you think about it?");
		scr_text("Did you love living? Could you even call it living?");
		scr_text("Did you act yourself... or did you feel darker impulses coursing wi- thin?");
		scr_text("...");
		scr_text("You have so little time on this earth.");
		scr_text("Go do something with it.");
		scr_text("Go make games.");
		scr_text("ENDING 3 OF 3 - 'ANGEL OF DEATH'");
		global.america_lose_over = true;
		break;
		
		
		
		
		
		
		
		scr_text("", "boss");
		
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		scr_text("");
		break;
	}
}
			/*scr_option("Yes", "npc 1 yes toast");
			scr_option("No", "npc 1 no toast");
		break;
		
		case "npc 1 yes toast":
			scr_text("Me too, toast is great!", "boss");
		break;
		
		case "npc 1 no toast":
			scr_text("How the hell can you not like toast? Fucking goon...", "boss");
		break;
		
	}
}
*/
