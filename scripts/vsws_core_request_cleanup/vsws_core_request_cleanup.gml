// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_request_cleanup(){
	
	ds_map_destroy(request_db);
	ds_map_delete(request_holder, sock);
	original_request[connection_id] = "";
    release(async_load[? "id"]); //Terminates the connection.
	
}