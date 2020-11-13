// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_init_response(){
	header = vsws_core_create_header(status_code,file_get,to_cgi); //Creates the header based on what's been determined above, and identifies it as "header"
        
    send_buffer = buffer_create(1,buffer_grow,1); //Creates our buffer that we'll send
        
    buffer_write(send_buffer,buffer_string,header); //Writes the header string into the new buffer
        
    offset = string_byte_length(header); //Finds the length of the header string in bytes (note: for some reason buffer_get_size does NOT do this properly regardless of different settings) to determine where to place the content in the buffer.
}