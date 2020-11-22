/// @function vsws_core_respond_dynamic(string);
/// @param {string} response What you want to send back.

function vsws_core_respond_dynamic(_response){
	
	send_buffer = buffer_create(1,buffer_grow,1); //Creates our buffer that we'll send
	buffer_write(send_buffer,buffer_string,_response);
	send_size = buffer_seek(send_buffer, buffer_seek_end, 0); //Finds the last character of the buffer to determine the size of the entire buffer.
    network_send_raw(sock, send_buffer, send_size); //actually sends the file
	
}