get_attach = 0;
to_cgi = false;

//Verifies the type of connection (ie, is it a new connection, sending data, or leaving?
var type = async_load[? "type"];

//Adds the connection to our connection count.
if (type == network_type_connect)
{
	connection_id = async_load[? "socket"];
    connectedClients++;
	timer_active[connection_id] = true;
	timeout[connection_id] = 7200;
	temp_content_length_check[connection_id] = false;
	temp_content_length[connection_id] = 0;
	original_request[connection_id] = ""; //Double check to make sure a previous session isn't still there.
}

//If it's sending us data, we check if the client is saying something like "GET /somepage.html", all other requests are ignored in this version of VSWS.
if (type == network_type_data)
{
	
	vsws_core_request_grab();
	
	if(string_pos("Content-Length: ",original_request[connection_id]) != 0 && temp_content_length_check[connection_id] == false)
	{
		temp_content_length_check[connection_id] = true;
		_temp_parse = explode("\n",original_request[connection_id]);
		for(i = 0; temp_content_length[connection_id] == 0; i++)
		{
			if (string_pos("ontent-Length:",_temp_parse[i]) != 0)
			{
				_temp_parse = explode(":", _temp_parse[i]); 
				_temp_parse[1] = string_replace_all(_temp_parse[1], " ", "");
				temp_content_length[connection_id] = _temp_parse[1];
				show_message_async(string(temp_content_length[connection_id]));
			}
		}
		
	}
	
	clipboard_set_text(original_request[connection_id]);
	
	if (vsws_core_request_terminated())
	{
		//show_message_async(string(string_byte_length(original_request[connection_id])));
		clipboard_set_text(original_request[connection_id]);
		vsws_core_parse_request();
		if (vsws_core_valid_check == true)
		{
			vsws_core_find_file();
			vsws_core_cgi_switch();
        
			vsws_core_init_response();
		
			if (to_cgi == true)
			{
				vsws_core_processor_io();
			}
			else
			{
				vsws_core_basic_io();
			}
		
			vsws_core_respond();
		
			//show_message_async("eeyyyy, we got here");
		
			log("["+string(status_code)+"] "+async_load[? "ip"]+" " + ds_map_find_value(request_db,"Request-Type") + " " + ds_map_find_value(request_db,"Request-URL")) //Logs the action... to the log.
			size_count(send_size); //Adds the size of the buffer to our count of how much we've sent since server start.
		}
		else
		{
			vsws_core_respond_dynamic("Invalid / Unsupported HTTP Request");
		}
		
		vsws_core_response_cleanup();
		timeout[connection_id] = 0;
		timer_active[connection_id] = false;
		vsws_core_request_cleanup();
    }
	
}
	
if (type == network_type_disconnect)
{
	connection_id = async_load[? "socket"];
	original_request[connection_id] = "";
	timer_active[connection_id] = false;
	timeout[connection_id] = 0;
	network_destroy(connection_id);
}