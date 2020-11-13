//The basic, boring, intake of a file if a processor hasn't been used.

function vsws_core_basic_io()
{
	
	buffer_load_ext(send_buffer, string(file_get), offset); //Loads the file and writes it into the buffer, after the header.

}