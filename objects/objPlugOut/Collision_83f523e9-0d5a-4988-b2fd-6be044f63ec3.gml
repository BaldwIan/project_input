//if (global.plugCooldown <= 0)
if (canplug)
{
	if (!plyr_obj.plugged) audio_play_sound(sndConnectClick, 0.5, false);
	other.plugged = true;
	global.plug = id;
	canplug = false;
}

