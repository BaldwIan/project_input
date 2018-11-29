if (distance_to_object(plyr_obj) < 450) image_speed = 5;
else
{
	image_speed = 0;
	image_index = 5;
}
draw_self();
