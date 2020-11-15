function vsws_core_parse_request() {
	//REQUEST PARSING
	//This parses the HTTP request the server has recieved into a DS map for easy searching, and sets up certain variables.

	request_db = ds_map_create(); //creates a new DS map called request_db

	_malformed_request = false;
	
	body = false;

	body_line_add = "";
	
	request = explode("\n",original_request[connection_id]); //Explodes the request line by line, as each line contains an individual part of the request

	request_first_line = explode(" ",request[0]); //Explodes the first line of the request into seperate values - usually this line looks like "GET /somepage.html HTTP/1.1", which would be "[Request-Type] [Request-URL] [Request-HTTPv(ersion)]"
	//Manually add the values we just exploded from the request line
	if (array_length(request_first_line) > 2)
	{
		ds_map_add(request_db,"Request-Type",request_first_line[0]);
		ds_map_add(request_db,"Request-URL",request_first_line[1]);
		ds_map_add(request_db,"Request-HTTPv",request_first_line[2]);
	}
	else
	{
		_malformed_request = true;
	}
	
	if (_malformed_request == false)
	{
				show_message_async("not malformed alert")
	//Adds the rest of the values to the DS map
	for(i = 1; i < (array_length_1d(request)-2); i++)
	{
		if (string_pos(":", request[i]) != 0 && body = false)
			{
				request_line_add = explode(":",request[i]);
				request_line_add[1] = string_delete(request_line_add[1],1,1);
				ds_map_add(request_db,string(request_line_add[0]),string(request_line_add[1]));
			}
			else
			{
				body = true;
				body_line_add += request[i];
			}
	}

	//show_message_async(string(body_line_add));
	if (body_line_add != "")
	{
		ds_map_add(request_db,"request_body",string(body_line_add));
	}

	if (!is_undefined(ds_map_find_value(request_db,"request_body")))
	{
		//show_message_async(ds_map_find_value(request_db,"request_body"));
	}

	get = explode("?",ds_map_find_value(request_db,"Request-URL")) //Explodes the Request-URL into two sections, get[0] will contain the actual path+file, and get[1] will contain an attached query (if there are any)
        
	//Parses any additional GET attributes into an array (ie ?foo=bar&bar=foo2)
	if (array_length_1d(get) > 1)
	{
		get_attach = explode("&",get[1]);
	}
	
	file_get = string_delete(get[0],1,1) //Removes the preceding / from the request
	
	//Explodes the complete file_get path so we can find the actual file name
	file_get_final = explode("/",get[0]); 
	file_get_final = file_get_final[array_length_1d(file_get_final)-1];
	}

	//Compatibility for 0.3.x, as we can only support GET in this version
	if (_malformed_request == false)
	{
		if (ds_map_find_value(request_db,"Request-Type") == "GET" || ds_map_find_value(request_db,"Request-Type") == "POST")
		{
			ds_map_add(request_db,"Request-Valid",true);
			show_message_async("Request type is valid");
		}
		else
		{
			ds_map_add(request_db,"Request-Valid",false);
		}
	}
	else
	{
		ds_map_add(request_db,"Request-Valid",false);
		show_message_async("Invalid");
	}
}
