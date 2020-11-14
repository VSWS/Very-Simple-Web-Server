// Checks to see if the client ended the request

function vsws_core_request_terminated(){
	if (temp_content_length_check == true)
	{
		if (string_length(original_request[connection_id]) >= (temp_content_length[connection_id]/2))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	else
	{
		if (string_char_at(original_request[connection_id], string_length(original_request[connection_id])) == "\n" && string_char_at(original_request[connection_id], string_length(original_request[connection_id])-2) == "\n")
		{
			return true;
		}
		else
		{
			return false;
		}
	}
}