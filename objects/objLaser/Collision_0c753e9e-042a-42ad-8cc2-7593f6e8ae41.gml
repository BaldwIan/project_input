plyr_obj.hp -= 10;
with (plyr_obj) alarm [3] = 0.1;
audio_play_sound(sndPlayerHit, 0.5, false);
instance_destroy();
