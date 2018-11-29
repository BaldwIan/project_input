if (x + (xTo - x) / 15 > cwidth / 2) and (x + (xTo - x) / 15 < room_width - cwidth / 2) x += (xTo - x) / 10;
if (y + (yTo - y) / 15 > cheight / 2) and (y + (yTo - y) / 15 < room_height - cheight / 2) y += (yTo - y) / 10;

if (!instance_exists(plyr_obj)) follow = id;
else follow = plyr_obj;

if (follow != noone)
{
	xTo = follow.x;
	yTo = follow.y;
}


var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
camera_set_view_mat(camera, vm);


x = clamp(x, 0 + cwidth / 2, room_width - cwidth / 2);
y = clamp(y, 0 + cheight / 2, room_height - cheight / 2);

