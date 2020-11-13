// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_request_grab(){
	
	if (ds_map_exists(request_holder, sock))
	{
		old_val = string(ds_map_find_value(request_holder, sock));
		ds_map_delete(request_holder, sock);
	}
	
	ds_map_add(request_holder, sock, old_val + current_input);
	
	if (!is_undefined(ds_map_find_value(request_holder, sock)))
	{
		original_request = string(ds_map_find_value(request_holder, sock));
	}
	
}