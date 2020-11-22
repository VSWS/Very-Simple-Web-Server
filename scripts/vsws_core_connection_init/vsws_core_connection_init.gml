function vsws_core_connection_init(){
	connection_id = async_load[? "socket"];
    connectedClients++;
	timer_active[connection_id] = true;
	timeout[connection_id] = 7200;
	temp_content_length_check[connection_id] = false;
	temp_content_length[connection_id] = 0;
	original_request[connection_id] = ""; //Double check to make sure a previous session isn't still there.
}