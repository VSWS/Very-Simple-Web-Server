// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_request_grab(){
	
	connection_id = async_load[? "id"];
	sock = connection_id; //This is a lazy backward-compatible hack for right now.
	request_string_add = buffer_read(async_load[? "buffer"], buffer_string);
	original_request[connection_id] += request_string_add;
	
}