newX = lengthdir_x(spiralRad, spiralAngle)
newY = lengthdir_y(spiralRad, spiralAngle)

if (spiralRad >= 0)
{
	spiralRad -= 16;
	spiralAngle += 20;
}

x = objCamera.x + newX;
y = objCamera.y + newY;


with (buttonFullscreen)
{
	x = lerp(x, objPauseMenu.x, random_range(0.2, 0.5));
	y = lerp(y, objPauseMenu.y - 64, random_range(0.2, 0.5));
}

with (buttonSound)
{
	x = lerp(x, objPauseMenu.x, random_range(0.2, 0.5));
	y = lerp(y, objPauseMenu.y, random_range(0.2, 0.5));
}
with (sliderSound)
{
	value = audio_get_master_gain(0);
	x = lerp(x, objPauseMenu.x - sprite_width / 2, random_range(0.2, 0.5));
	y = lerp(y, objPauseMenu.y + 30, random_range(0.2, 0.5));
}

with (buttonExit)
{
	x = lerp(x, objPauseMenu.x, random_range(0.2, 0.5));
	y = lerp(y, objPauseMenu.y + 64, random_range(0.2, 0.5));
}
/*
with (buttonMenu)
{
	x = lerp(x, objPauseMenu.x - 300, random_range(0.2, 0.5));
	y = lerp(y, objPauseMenu.y + objCamera.cheight - 350, random_range(0.2, 0.5));
}
*/
