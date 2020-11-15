// Checks to see if the client ended the request

function vsws_core_request_terminated(){
	if (temp_content_length_check == true)
	{
		_byte_check = explode("\n",original_request[connection_id])
		if (string_byte_length(_byte_check[1]) = (temp_content_length[connection_id]))
		{
			return true;
		}
		else
		{
			show_message_async("I'm here, checking values and returning false for: "+string(string_byte_length(_byte_check[1])));
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