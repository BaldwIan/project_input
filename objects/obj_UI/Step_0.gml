


if (keyboard_check_pressed(ord("R")))
{
	part_type_destroy(all);
	part_emitter_destroy(all, all);
	part_system_destroy(all);
	game_restart();
}
if (keyboard_check_pressed(ord("V"))) room_goto(rm_boss1)
/*
if (keyboard_check_pressed(ord("H")))
{
	global.showAggro += 1
	if (global.showAggro == 2) global.showAggro = 0
}
*/
frames++;
if (frames % room_speed = 0) global.seconds++;