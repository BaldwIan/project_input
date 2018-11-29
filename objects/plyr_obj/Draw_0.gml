//draw_text(x, y - 100, "hvel: " + string(hvel))
//draw_text(x, y - 50, "hspd:  " + string(hspd))

if (hook_active)
{
	draw_sprite_ext(hook, 0, hook_x + 5, hook_y - 20, 2, 2, 180, c_white, 1);
	draw_line_width_color(x, y, hook_x, hook_y, 3, c_white, c_white);
}
if (!alarm[3]) draw_sprite_ext(MainCharacter, image_index, x + shake, y + shake, image_xscale, image_yscale, 0, c_white, 1);
else draw_sprite_ext(damaged, image_index, x + shake, y + shake, image_xscale, image_yscale, 0, c_white, 1);

if plugged
{
	var plyrDir = point_direction(global.plug.x, global.plug.y,x,y);
	draw_line_width_color(x, y, global.plug.x, global.plug.y, 5, c_gray, c_gray);
	draw_circle(global.plug.x, global.plug.y, 3, false);
	draw_sprite_ext(sprPlug, 0, x, y, 4, 4, plyrDir, c_white, 1);
}

if (alarm[1]) or (alarm[2])
{
	draw_sprite(sprSlider, 0, x - sprite_get_width(sprSlider) / 2, y - 80);
	
	if (alarm[1])
	{
		draw_set_color(c_blue);
		draw_sprite_part_ext(sprSlider, 1, 0, 0, alarm[1] / plasmaCooldown * sprite_get_width(sprSlider), sprite_get_height(sprSlider) / 2, x - sprite_get_width(sprSlider) / 2, y - 80 - sprite_get_height(sprSlider) / 2, 1, 1, c_green, alarm[1] / plasmaCooldown);
		draw_set_color(c_white);
	}
	
	if (alarm[2])
	{
		
		draw_sprite_part_ext(sprSlider, 1, 0, sprite_get_height(sprSlider) / 2, alarm[2] / pillCooldown * sprite_get_width(sprSlider), sprite_get_height(sprSlider), x - sprite_get_width(sprSlider) / 2, y - 80, 1, 1, c_white, alarm[2] / pillCooldown);
	}
}
