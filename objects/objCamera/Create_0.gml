camera = camera_create();
cwidth = 1024;
cheight = 768;
image_alpha = 0.2;
depth = -1000;

var vm = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var pm = matrix_build_projection_ortho(cwidth, cheight, 1, 10000);

camera_set_view_mat(camera, vm);
camera_set_proj_mat(camera, pm);

view_camera[0] = camera;

view_set_wport(0, cwidth);
view_set_hport(0, cheight);

follow = plyr_obj;
xTo = x;
yTo = y;

var enemyLayer = layer_get_id("Enemies")
layer_set_visible(enemyLayer, true)
