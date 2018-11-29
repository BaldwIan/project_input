//part_system_destroy(particles);

with(objPlugOut)
{
	canplug = true;
	image_index = 0;
}



global.firecount = 0

deathFire = instance_create_layer(inst_6CA07DBB.x + 32, inst_6CA07DBB.y, "Blocks", firewall);
with (deathFire)
{
	image_xscale = 2;
	global.firewall[0] = id;
}

instance_destroy(inst_6CA07DBB);
instance_destroy(inst_E305747);

deathText = instance_create_layer(x, y, "Control", objFloatingText);
with (deathText)
{
	text = "Boss destroyed!";
	color = c_yellow;
}

grappleText = instance_create_layer(room_width / 2, room_height / 2, "Control", objFloatingText);
with (grappleText)
{
	text = "Grapple obtained!\n\nConnect the plugs to continue.";
	alphaDecrease = 0;
	sizeIncrease = 0;
	yUp = 0;
	
}

global.bosskilled+=1
audio_play_sound(sndBossDead, 1, false);

with(wall_obj) image_blend = c_navy;
