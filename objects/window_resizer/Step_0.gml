ww = window_get_width();
wh = window_get_height();

if ((ww + wh) != (last_ww + last_wh) && ww > 1 && wh > 1)
{
	window_set_size(ww,wh);
	camera_set_view_size(view_camera[0], ww, wh)
	view_set_wport(0, ww);
	view_set_hport(0, wh);
	surface_resize(application_surface,ww,wh);
}

last_ww = ww;
last_wh = wh;