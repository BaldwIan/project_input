/// @
// You can write your code in this editor
keyleft = keyboard_check(ord("A"));
keyright = keyboard_check(ord("D"));
keyjump = keyboard_check(vk_space) or keyboard_check(ord("W"));
change_wep = keyboard_check_pressed(ord("Q"));
lvlchange = keyboard_check(vk_numpad1);
lvl1 = keyboard_check(vk_numpad2);
lvl2=keyboard_check(vk_numpad3)
blvl2=keyboard_check(vk_numpad4)
if lvl1 room_goto(level1);
if lvl2 room_goto(level2);
if blvl2 room_goto(boss2)

#region movement
//movement
//var is a temporary action. lasts one loop
var move = keyright - keyleft;
if (hvel > 0) hvel -= 0.1;
if (keyleft) xor (keyright)
{
	hvel += 0.2;
	hvel = clamp(hvel, 0, 1);
	if (keyleft)
	{
		image_xscale = -2
		if (dir == "right") hvel = 0;
		dir = "left";
		hspd = -walkspd;
	}
	
	if (keyright)
	{
		image_xscale = 2
		if (dir == "left") hvel = 0;
		dir = "right";
		hspd = walkspd;
	}
	image_speed = 20;
}
else
{
	image_speed = 0;
	image_index = 0;
}


//hspd = move * walksp;
vspd += grav;


if (place_meeting(x, y + 1, block_obj)) and (keyjump) and (!hook_active)
{
	vspd = -50;
}
#endregion movement

// Check Grapple
if(mouse_check_button_pressed(mb_right)) and (global.bosskilled >= 1) and (instance_exists(hook_obj))
{
	hook_x = instance_nearest(mouse_x, mouse_y, hook_obj).x;
	hook_y = instance_nearest(mouse_x, mouse_y, hook_obj).y + 32;
	if (place_meeting(hook_x, hook_y, hook_obj)) and (distance_to_point(hook_x, hook_y - 32) < 450) hook_active = true;
}

if (mouse_check_button_released(mb_right)) hook_active = false

if (hook_active)
{
	grav = 0.1;
	if (place_free((hook_x - x) * 0.01, y)) x += (hook_x - x) * 0.1;
	if (place_free(x, (hook_y - y) * 0.01)) y += (hook_y - y) * 0.1;
	//if (keyboard_check(ord("W"))) vspd -= 0.5;
	//if (keyboard_check(ord("S"))) vspd += 0.5;
}
else grav = 5

#region collision
//collision horizontal
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
	//x cord in the game room, y is the y cord in the game world
	x = x + hspd * hvel;
}


// vertical collision
if (place_meeting(x, y + vspd, block_obj))
{
	while (!place_meeting(x, y + sign(vspd), block_obj))
	{
		y += sign(vspd)
	}
	vspd = 0;
}
else
{
	//x cord in the game room, y is the y cord in the game world
	y = y + vspd //* vvel;
}

#endregion collision

//change weapon



if global.bosskilled <= 1
{
	setwep=0
}

if (global.bosskilled >= 2)
{
	if (change_wep)
	{
		set_wep += 1
	
		if (set_wep = 3)
		{
		set_wep = 1	
		}
		
	//show_debug_message(set_wep)
	}
}

if ammo > 100
{
	ammo=100
}

// Check for left mosue button
fire = mouse_check_button(mb_left)




if (set_wep = 1)
{
	// Fires a bullet if cooldown and ammo are ok
	if (fire and ammo > 0 and canFire)
	{
		//if (global.showAggro) audio_play_sound(sndshot, 1, false);
		audio_play_sound(snd_shot2, 1, false);
		instance_create_layer(x, y, "player", bullet_obj)
		ammo -= 1;
		if (!alarm[1]) alarm[1] = plasmaCooldown;
		canFire = false;
	}
}

// Fires a pill bullet if cooldown is ok
if (set_wep = 2)
{
	
	if (fire)
	{
		if (pills > 0)
		{
			instance_create_layer(x, y, "player", pill_obj)
			pills = 0
		}
		if (!alarm[2]) alarm[2] = pillCooldown;
	}
	
}



if lvlchange
{
	room_goto(Hub)	
}

if (hp > 100) hp = 100
else if (hp <= 0) instance_destroy()



