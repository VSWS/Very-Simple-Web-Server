/// @description log(string)
/// @param string
function log(argument0) {
	//Adds the given string to the log and log file.

	to_log = argument0;

	//appends the current tiny_time to the log request
	to_log = "["+string(tiny_time())+"] " + to_log;

	//Opens the log file and writes the log request into it
	log_file = file_text_open_append("vsws_access_log.txt"); 
	file_text_write_string(log_file, to_log);
	file_text_writeln(log_file);
	show_debug_message(string(to_log));


	//Limits the length of the in-server log display to 200 lines (this is to help conserve memory and performance!)
	if (array_length_1d(log_string) > 200)
	{
		log_string = "";
		log_num = 0;
	}

	//Adds the current log request to the in-server display
	log_string[log_num] = to_log;

	log_num++;

	//Closes the text file
	file_text_close(log_file);


}
