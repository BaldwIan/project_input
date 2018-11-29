if (distance_to_point(mouse_x, mouse_y) <= 1)
{
	image_index = 1;
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
				game_end();
				break;
		
			case 1:
				window_set_fullscreen(not window_get_fullscreen());
				break;
		
			case 2:
				room_goto_previous();
				break;
				
			case 3:
				room_goto(rmLevelSelection)
			
			default:
				break;
			
		}
	}

}
else
{
	image_index = 0;
	hover = 1;
}

switch(action)
{
	case 0:
		break;
		
	case 1:
	if (window_get_fullscreen()) text = "Fullscreen: On";
		else text = "Fullscreen: Off";
		break;
		
	case 2:
		break;
		
		
	default:
		break;
	
}

