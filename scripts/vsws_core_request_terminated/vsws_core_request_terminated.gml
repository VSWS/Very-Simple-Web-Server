// Checks to see if the client ended the request

function vsws_core_request_terminated(){
	if (string_char_at(original_request[connection_id], string_length(original_request[connection_id])) == "\n" && string_char_at(original_request[connection_id], string_length(original_request[connection_id])-2) == "\n")
	{
		return true;
	}
	else
	{
		return false;
	}
}