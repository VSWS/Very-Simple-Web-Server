/// @description create_header(response code,file,processed)
/// @param response code
/// @param file
function vsws_core_create_header(argument0, argument1, argument2) {
	//returns the header for the response as a string

	current_gmt(); //gets the current HTTP formatted time (in UTC/GMT)

	var status_code = string(argument0);
	var file = string(argument1);
	var last_modified = current_gmt();//string(argument2);
	var processed = argument2;
	var return_header = "";

	switch (status_code)
	    {
	        case "200": status_code = "200 OK"; break;
			case "301": status_code = "301 Permanently Moved"; break;
	        case "404": status_code = "404 Not Found"; break;
	    }

	get_os();

	http_response[0] = "HTTP/1.1 "+status_code;

	http_response[1] = "Date: " + string(datetime);

	http_response[2] = "Server: VSWS/" + string(server_version)+" (" + string(os) + ")";

	http_response[3] = "Last-Modified: "+string(last_modified);

	http_response[4] = "Accept-ranges: bytes";

	http_response[5] = "Connection: close";

	http_response[6] = "Content-Type: " + content_type(file);

	http_response[7] = "\n";

	//writes the actual header string using the above variables
	if (processed == false)
	{
		num = 7;
	}
	else
	{
		num = 6;
	}

	for (i = 0; i < num; i++)
	{
	    return_header+=http_response[i];
	    return_header+=http_response[7];
	}
		if (processed == false) //Checks to see if the file will be processed through CGI - if it is, CGI will return the header-terminating linebreaks.
		{
			return_header+=http_response[7];
		}
    
	//returns the header to the calling script.
	return return_header; 
}