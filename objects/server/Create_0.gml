vsws_core_config();
vsws_core_init();

original_request = array_create(99, "");
temp_content_length_check = array_create(99, false);
temp_content_length = array_create(99, 0);
timeout = array_create(99, 0);
timer_active = array_create(99, false);

//draw_enable_drawevent(false)