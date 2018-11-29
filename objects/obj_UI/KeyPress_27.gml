instance_destroy(objPauseMenu);

if (!paused)
{
	paused = true;
	instance_deactivate_all(true);
	instance_activate_object(objCamera);
	instance_create_layer(objCamera.x + choose(-200, 200), objCamera.y + choose(-200, 150), "UI", objPauseMenu);
}

else
{
	paused = false;
	instance_activate_all();
}

