// Healthbar

draw_sprite_ext(spr_healthbar_inner, 0, view_wport[0] - 1000, 716, 1, 1, 90, c_white, 1);
draw_sprite_ext(spr_healthbar_filled, 0, view_wport[0] - 1000, 716, hp / 100, 1, 90, c_white, 1);
draw_sprite_ext(spr_healthbar_border, 0, view_wport[0] - 1000, 716, 1, 1, 90, c_white, 1);
draw_text(view_wport[0] - 930, 690, "HP: " + string(round((hp))));

// Display Current Weapon

draw_sprite(weapon_screen, 0, 0, 0);
if (set_wep == 1) weapon = bullet;
else weapon = pill;
draw_sprite_ext(weapon, 0, 32, 32, 1.5, 1.5, 0, c_white, 1)

// Ammo

draw_text(view_wport[0] - 800,690,"Ammo: " + string(ammo))