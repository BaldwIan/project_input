deathText = instance_create_layer(plyr_obj.x, plyr_obj.y, "Control", objFloatingText)
with (deathText)
{
	sizeIncrease = 0.1;
	alphaDecrease = 0.03;
	text = "Cloud Storage Destroyed!";
	color = c_yellow;
}

global.bosskilled++;
audio_play_sound(sndBossDead, 1, false);
