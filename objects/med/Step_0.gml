/*if (cooldown >= 0)
{
	image_alpha = 0.5
	cooldown--;
}
*/
image_alpha = 1;

if (!place_meeting(x, y + grav, block_obj)) y += grav;
