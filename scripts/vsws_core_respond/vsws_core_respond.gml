function vsws_core_respond(){
	
	send_size = buffer_seek(send_buffer, buffer_seek_end, 0); //Finds the last character of the buffer to determine the size of the entire buffer.
    network_send_raw(sock, send_buffer, send_size); //actually sends the file
	
}