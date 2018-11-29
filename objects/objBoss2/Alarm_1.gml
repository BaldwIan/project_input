/// @description Create ammo pack
if (!instance_exists(objammo)) ammopack = instance_create_layer(1370, 900, "Interactives", objammo);
with (ammopack)
{
	image_xscale = 3;
	image_yscale = 3;
}
alarm[1] = room_speed * 5;