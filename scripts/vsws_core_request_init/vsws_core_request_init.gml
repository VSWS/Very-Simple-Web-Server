// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_request_init(){
	original_request = "";
	old_val = "";
	
	current_input = buffer_read(async_load[? "buffer"], buffer_string);
	
    sock = async_load[? "id"]; //Gets the ID of the socket sending info, which we'll need to send stuff back
}