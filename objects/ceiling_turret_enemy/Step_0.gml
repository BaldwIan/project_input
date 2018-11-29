///
// You can write your code in this editor
angle = point_direction(x, y, plyr_obj.x, plyr_obj.y)

if (not alert) and (image_index == 4) image_index = 0
if (distance_to_object(plyr_obj) < aggroDistance)
{
	alert = true;
}
else alert = false;

if alert
{
	image_index = 4
	if (cooldown_fire >= 0) cooldown_fire -= 5

	if cooldown_fire <= 0
	{
		shot = instance_create_layer(x, y + 30,"Projectiles", turret_bullet)
		
		with(shot)
		{
			speed = 15;
			direction = point_direction(x, y, plyr_obj.x + plyr_obj.hspd, plyr_obj.y + plyr_obj.vspd);
		}
	
		cooldown_fire=room_speed*1;
	}
}
