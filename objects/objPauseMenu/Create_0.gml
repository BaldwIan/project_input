spiralRad = distance_to_point(objCamera.x, objCamera.y);
spiralAngle = point_direction(x, y, objCamera.x, objCamera.y);
xTo = x;
yTo = y;
randomize();

buttonFullscreen = instance_create_layer(x, y - 72, "UI", objButton);
with (buttonFullscreen)
{
	action = 1;
}

buttonSound = instance_create_layer(x, y, "UI", objButton);
with (buttonSound)
{
	
}
sliderSound = instance_create_layer(x - sprite_get_width(sprSlider), y + 20, "UI", objSliderParent)
with (sliderSound)
{
	action = 1;
}


buttonExit = instance_create_layer(x, y + 72, "UI", objButton);
with (buttonExit)
{
	action = 0;
	text = "Exit Game";
}
/*
buttonMenu = instance_create_layer(x - 300, y + view_hport[0] / 2, "UI", objButton)
with (buttonMenu)
{
	action = 4;
	text = "Main Menu";
}
*/
