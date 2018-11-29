/// @description Insert description here
// You can write your code in this editor
for (s=0; s<10; s++)
{
	shot1 = instance_create_layer(x, y,"Projectiles", turret_bullet)
			with(shot1)
			{
				direction=boss_bullet.dir
				speed=20
			}
			
	dir+=36
	
}

if (drop <= 20)
{
	meddrop = instance_create_layer(x,y,"Interactives",med)
	with (meddrop)
	{
		grav = random_range(10, 15);
	}
}
if ammodrop<=75
{
	ammod=instance_create_layer(x,y,"Interactives",objammo)
	with ammod
	{
		grav=random_range(10,15);	
	}
}