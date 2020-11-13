// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_response_cleanup(){
	buffer_delete(send_buffer); //deletes the buffer, so we don't hog a ton of memory when sending larger files.
}