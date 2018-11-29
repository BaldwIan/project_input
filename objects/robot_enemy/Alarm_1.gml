/// @description Attack player
if (place_meeting(x, y, plyr_obj))
{
	with (plyr_obj) hp -= 5;
	with (plyr_obj) alarm [3] = 0.1;
	audio_play_sound(sndPlayerHit, 0.5, false);
}
alarm[1] = room_speed * 0.25;

