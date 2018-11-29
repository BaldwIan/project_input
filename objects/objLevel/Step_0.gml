if (distance_to_point(mouse_x, mouse_y) <= 1)
{
	image_index = 0;
	if (hover != 0)
	{
		//audio_play_sound(sndshot, 1, false);
		hover = 0;
	}
	
	if (mouse_check_button_pressed(mb_left))
	{
		//audio_play_sound(sndButtonClick, 1, false);
		switch(action)
		{
			case 0:
				room_goto(Tutorial);
				
			case 1:
				room_goto(level1);
				
			case 2:
				room_goto(rm_boss1);
			
			default:
				break;
			
		}
	}

}