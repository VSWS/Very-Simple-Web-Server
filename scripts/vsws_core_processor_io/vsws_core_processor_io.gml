//Sends and recieves information from a CGI application

function vsws_core_processor_io(){
	php_request = file_get;
			
	if (is_array(get_attach))
	{
		for(i = 0; i < array_length(get_attach); i++)
		{
			php_request = php_request + " " + get_attach[i];
		}
	}
	
	process_buffer = buffer_create(1,buffer_grow,1); //Creates our buffer for processed content
	process_execute(string(php_path) + " " + php_request);//process_execute("cmd.exe /c " + string(php_path) + " " + php_request); //sends the file to the processor
	eval = process_evaluate(); // writes output of the process to the string
	buffer_write(process_buffer, buffer_text, eval); //writes the returned content to the processed buffer
	process_offset = string_byte_length(eval); //Finds the length of the returned content so it can be properly copied into the send_buffer
	buffer_copy(process_buffer,0,process_offset,send_buffer,offset); //Merges the processed content into the send_buffer
			
	//cleanup time!
	buffer_delete(process_buffer);
}