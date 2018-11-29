// Healthbar

draw_sprite_ext(spr_healthbar_inner, 2, x - sprite_get_width(spr_healthbar_inner) / 2 * hpBarScale, y + hpDown, hpBarScale, hpBarScale, 0, c_white, 1);
draw_sprite_part_ext(spr_healthbar_filled, 1, 0, 0, hp / maxHp * sprite_get_width(spr_healthbar_filled), sprite_get_width(spr_healthbar_filled) * hpBarScale, x - sprite_get_width(spr_healthbar_filled) / 2 * hpBarScale, y + hpDown, hpBarScale, hpBarScale, c_white, 1);

draw_self();


// Draw aggro circle
/*
if (global.showAggro)
{
	draw_set_alpha(0.2)
	if (alert) draw_circle_color(x, y, aggroDistance, c_red, c_red, false)
	else draw_circle_color(x, y, aggroDistance, c_aqua, c_aqua, false)
	draw_set_alpha(1)
}

draw_self()
*/