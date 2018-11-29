if (mouse_check_button_pressed(mb_left))
{
	var button_x = x + sprite_width * value;
	var button_y = y;
	var button_width = sprite_get_width(sprSliderButton);
	var button_height = sprite_get_height(sprSliderButton);
	if (point_in_rectangle(mouse_x, mouse_y, button_x - button_width / 2, button_y - button_height / 2, button_x + button_width / 2, button_y + button_height / 2))
	{
		selected = true;
	}
}

if (!mouse_check_button(mb_left))
{
	selected = false;
}

if (selected)
{
	value = clamp((mouse_x - x) / sprite_width, 0, 1);
}


switch(action)
{
	case 1:
		audio_master_gain(value)
		with(objPauseMenu) buttonSound.text = "Sound: " + string(objSliderParent.value * 100) + "%";
		break;
		
	default:
		break;
	
}
