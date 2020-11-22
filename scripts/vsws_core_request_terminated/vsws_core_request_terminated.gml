// Checks to see if the client ended the request
//Testing Github integration AGAIN

function vsws_core_request_terminated(){
	if (temp_content_length_check[connection_id] == true)
	{
		_get_body = explode("\n",original_request[connection_id])
		
		_body = false;
		_body_text = "";

		for(_line = 0; _line < array_length(_get_body); _line++)
		{
			if(_body == false)
			{
				if (string_pos(":",_get_body[_line]) == 0 && _line != 0)
				{
					_body = true;
				}
			}
			else
			{
				_body_text += _get_body[_line];
			}
		}
		
		debug_draw = string(_body_text);
		//show_message_async(_body_text);
		
		if (string_byte_length(_body_text) = (temp_content_length[connection_id]))
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