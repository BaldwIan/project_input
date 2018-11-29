if (cooldown <= 0)
{
	if (hp >= 20)
	{
		nonBullet = irandom_range(0, 27)
		for (s = 0; s < 45; s++)
		{
			if (s != nonBullet) && (s != nonBullet + 1) && (s != nonBullet + 2)
			{
				bullet_ = instance_create_layer(s * 32 + 32, 128, "Projectiles", turret_bullet);
				with (bullet_)
				{
					direction = 270;
					speed = 10;
				}
			}
			else
			{
				arrow = instance_create_layer(s * 32 + 32, 128, "Projectiles", objarrow)
				with (arrow)
				{
					image_blend = c_purple;
					image_alpha = 0.5;
					image_angle = 180;
					direction = 270;
					speed = 10;
				}
			}
		}
		
		cooldown = room_speed * 3.5;
	}
	
	
	
	else
	{
		instance_destroy();
		cooldown = room_speed * 2.5;
		newX = random(room_width);
		newY = random(room_height);
		
	}
	
}

if (hp < 20)
{
	if (!alarm[2]) alarm[2] = room_speed * 0.3;
	x = lerp(x, newX, 0.4);
	y = lerp(y, newY, 0.4);
}

if (wall_fake.active)
{
	cooldown--;
}

else
{
	plugCooldown--;
}


if (plugCooldown <= 0)
{
	global.firecount = 0
	
	with (wall_fake)
	{
		if (objBoss2.hp == 20) alarm[1] = room_speed * 5;
		active = true;
	}
	
	
	with(objPlugOut)
	{
		canplug = true;
		if (!plyr_obj.plugged) image_index = 0;
	}
	with (objPlugIn) image_index = 0;
	plugCooldown = room_speed * 5;
}

if (place_meeting(x + hspd, y, block_obj)) hspd *= -1;
if (place_meeting(x, y + vspd, block_obj)) vspd *= -1;
x += hspd;


if (hp <= 0) instance_destroy();
