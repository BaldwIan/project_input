// If player close enough enemy will be "alert"

#region particles

/*part_emitter_region(particles, particles_emitter, x, x, y, y, pt_shape_circle, ps_distr_gaussian);
part_emitter_burst(particles, particles_emitter, smoke, 5);
*/
#endregion particles

if (distance_to_object(plyr_obj) < aggroDistance)
{
	alert = true;
}
else alert = false

if alert
{
	cooldown -= 5

	if (cooldown <= 0)
	{
	bullet1 = instance_create_layer(x, y, "Projectiles", turret_bullet)
	with (bullet1)
	{
		direction = 135;
		speed = 15
	}
	bullet2 = instance_create_layer(x, y, "Projectiles", turret_bullet)
	with (bullet2)
	{
		direction = 90;
		speed = 15
	}
	bullet3 = instance_create_layer(x, y, "Projectiles", turret_bullet)
	with (bullet3)
	{
		direction = 45;
		speed = 15
	}
	
	cooldown = room_speed * 3
	}
}
