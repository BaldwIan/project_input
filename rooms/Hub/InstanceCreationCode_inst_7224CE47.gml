if (global.bosskilled == 1)
{
	room_ = level2
	var arrow = instance_create_layer(x - 64, y, "Blocks", objarrow);
	with (arrow) image_angle = 270;
}

else
{
	room_=Hub	
}