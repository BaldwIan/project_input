/// @description Insert description here
// You can write your code in this editor
if drop <= 40
{
	deathText = instance_create_layer(plyr_obj.x, plyr_obj.y, "Control", objFloatingText);
	with (deathText)
	{
		text = "Health pack dropped!";
		sizeIncrease = 0.03;
		color = c_red;
	}
	instance_create_layer(x,y,"Interactives",med)
}