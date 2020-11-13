get_attach = 0;
to_cgi = false;

//Verifies the type of connection (ie, is it a new connection, sending data, or leaving?
var type = async_load[? "type"];

//Adds the connection to our connection count.
if (type == network_type_connect)
{
    connectedClients++;
}

//If it's sending us data, we check if the client is saying something like "GET /somepage.html", all other requests are ignored in this version of VSWS.
if (type == network_type_data)
{
	
	vsws_core_request_init();
	
	vsws_core_request_grab();
	
	//clipboard_set_text(original_request);
	
	if (vsws_core_request_terminated())
	{
		vsws_core_parse_request();
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
		
		log("["+string(status_code)+"] "+async_load[? "ip"]+" " + ds_map_find_value(request_db,"Request-Type") + " " + ds_map_find_value(request_db,"Request-URL")) //Logs the action... to the log.
        size_count(send_size); //Adds the size of the buffer to our count of how much we've sent since server start.
        
		vsws_core_response_cleanup();
    }

	vsws_core_request_cleanup();
	
}