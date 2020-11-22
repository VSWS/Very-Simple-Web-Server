function vsws_core_connection_cleanup(){
	connection_id = async_load[? "socket"];
	original_request[connection_id] = "";
	timer_active[connection_id] = false;
	timeout[connection_id] = 0;
	network_destroy(connection_id);
}