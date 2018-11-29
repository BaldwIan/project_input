plyr_obj.hp-=20;
with (plyr_obj) alarm [3] = 0.1;
instance_destroy();
audio_play_sound(sndPlayerHit, 0.5, false);
