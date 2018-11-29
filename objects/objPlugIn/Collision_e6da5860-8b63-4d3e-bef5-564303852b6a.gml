if (plyr_obj.plugged)
{
	audio_play_sound(sndConnectClick, 0.5, false);
	image_index = 1;
	deathText = instance_create_layer(plyr_obj.x, plyr_obj.y, "Control", objFloatingText)
	plyr_obj.plugged = false
	instance_destroy(global.firewall[global.firecount])
	global.firecount++;
	
	with (deathText)
	{
		text = "Connected!";
		color = c_green;
		alphaDecrease = 0.05;
	}
	
	if (instance_exists(objBoss2))
	{
		with (wall_fake) active = false;
	}
}

