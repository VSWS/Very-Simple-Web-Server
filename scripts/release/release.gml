/// @description release(socket)
/// @param socket
/// @param  wait time
function release(argument0) {

	sock_id = argument0;
	network_destroy(sock_id); //Closes the connection

}
