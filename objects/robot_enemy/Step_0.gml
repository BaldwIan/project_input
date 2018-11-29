

vspd += grav;

// If player close enough enemy will be "alert"
if (distance_to_object(plyr_obj) < aggroDistance)
{
	alert = true;
}
else alert = false;

if (alert)
{
	if (place_meeting(x, y + 1, block_obj)) and (plyr_obj.y < y)
	{
		if (cooldown_jump < 0)
		{
			vspd -= 32;
			cooldown_jump = room_speed * 1;
		}
	}
	
	if (plyr_obj.x != x)
	{
		dir = -sign(x - plyr_obj.x)
		image_xscale = dir
		hspd = dir * 5;
	}
}

else
{
	dir = sign(moving)
	image_xscale = dir
	if (place_meeting(x + 1, y, block_obj)) moving *= -1;
	if (place_meeting(x - 1, y, block_obj)) moving *= -1;
	if (!place_meeting(x + moving + (32 * sign(moving)), y + 1, block_obj)) moving *= -1;
	
	hspd = moving
}

if (place_meeting(x + hspd, y, block_obj))
{
	while (!place_meeting(x + sign(hspd), y, block_obj))
	{
		x += sign(hspd)
	}
	hspd = 0;
}
else
{
	x += hspd;
}

// vertical collision
if (place_meeting(x, y + vspd, block_obj))
{
	while (!place_meeting(x, y+sign(vspd), block_obj))
	{
		y += sign(vspd)
	}
	vspd = 0;
}
else
{
	y += vspd;
}

//if (cooldown > 0) cooldown--;
cooldown_jump--;



if (hp <= 0) instance_destroy()

