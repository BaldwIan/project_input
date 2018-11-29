if drop <= 75
{
	ammodrop=instance_create_layer(x,y,"Interactives",objammo)
	with ammodrop 
	{
		grav=15	
	}
}