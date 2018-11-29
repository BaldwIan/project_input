/*
#region particles

part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_burst(particles, particles_emitter, plasma, 5);

#endregion particles
*/

#region firewall
if (!instance_exists(firewall))
{
	wcooldown--;
	if (wcooldown <= 0)
	{
		firewall_ = instance_create_layer(x, y, "Blocks", firewall);
		with (firewall_)
		{
			global.firewall[0] = id
			image_xscale = 6;
			image_yscale = 6;
		}
		wcooldown = room_speed * 6;
	}
}

else
{
	plugcooldown--;
}

if (plugcooldown <= 0)
{
	with(objPlugOut)
	{
		canplug = true;
		if (!plyr_obj.plugged) image_index = 0;
	}
	global.firecount = 0
	with (objPlugIn) image_index = 0;
}

#endregion firewall

cooldown--

if (cooldown <= 0)
{
	if (hp > 25)
	{
		cooldown = room_speed*2
		shot = instance_create_layer(x, y,"Projectiles",boss_bullet)
		with(shot)
		{
			image_xscale=10
			image_yscale=10
			speed = 15
			direction = point_direction(x, y, plyr_obj.x + plyr_obj.hspd, plyr_obj.y + plyr_obj.vspd)
		}
	}
	
	else
	{
		cooldown = room_speed*1.35
		for (s=0; s<5; s++;)
		{
		shot2= instance_create_layer(x, y,"Projectiles",turret_bullet)
			with(shot2)
			{
				image_xscale=5
				image_yscale=5
				speed = objBoss1.bspd
				direction = point_direction(x, y, plyr_obj.x + plyr_obj.hspd, plyr_obj.y + plyr_obj.vspd)
		
			objBoss1.bspd-=5
				if objBoss1.bspd <=0
				{
					objBoss1.bspd=15	
			
				}
			}
		}
	}
}
