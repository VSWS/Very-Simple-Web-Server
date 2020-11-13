// Checks to see if the client ended the request

function vsws_core_request_terminated(){
	if (string_char_at(original_request, string_length(original_request)) == "\n" && string_char_at(original_request, string_length(original_request)-2) == "\n")
	{
		return true;
	}
	else
	{
		return false;
	}
}