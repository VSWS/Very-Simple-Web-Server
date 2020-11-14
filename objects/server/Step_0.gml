//timer for timeouts

for(i = 0; i < array_length(timer_active); i++)
{
	if (timeout[i] > 0 && timer_active[i])
	{
		timeout[i] -= 1;
	}
	else
	{
		if (timeout[i] <= 0 && timer_active[i])
		{
			timeout[i] = 0;
			timer_active[i] = false;
			show_message_async("Connection Timed Out");
			original_request[i] = "";
			network_destroy(i);
		}
	}
}