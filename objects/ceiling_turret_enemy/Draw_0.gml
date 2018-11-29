// Healthbar
draw_sprite_ext(spr_healthbar_inner, 2, x - sprite_get_width(spr_healthbar_inner) / 2 * hpBarScale, y + hpDown, hpBarScale, hpBarScale, 0, c_white, 1);
draw_sprite_part_ext(spr_healthbar_filled, 1, 0, 0, hp / maxHp * sprite_get_width(spr_healthbar_filled), sprite_get_width(spr_healthbar_filled) * hpBarScale, x - sprite_get_width(spr_healthbar_filled) / 2 * hpBarScale, y + hpDown, hpBarScale, hpBarScale, c_white, 1);

/*
if (global.showAggro)
{
	draw_set_alpha(0.2)
	if (alert) draw_circle_color(x, y, aggroDistance, c_red, c_red, false)
	else draw_circle_color(x, y, aggroDistance, c_aqua, c_aqua, false)
	draw_set_alpha(1)
}
*/
if (alert)
{
	draw_sprite_ext(turret_arm, 0, x, y + 50, image_xscale, image_yscale, 360 + angle, c_white, 1)
	draw_self()
	draw_sprite_ext(turret_bulletsp, 0, x + (3 * image_xscale) * -sign(x - plyr_obj.x), y + 30 * image_xscale, image_xscale / 2, image_yscale / 2, angle, c_white, 1)
}

if (!alert) draw_self()