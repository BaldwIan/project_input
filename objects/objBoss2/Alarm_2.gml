/// @description Fire at player
audio_play_sound(sndLaserShoot, 0.5, false);
laser = instance_create_layer(x, y, "Projectiles", objLaser);
with(laser)
{
	image_xscale = 3;
	image_yscale = 2;
	direction = point_direction(x, y, plyr_obj.x, plyr_obj.y);
	image_angle = direction;
	speed = 15;
}
