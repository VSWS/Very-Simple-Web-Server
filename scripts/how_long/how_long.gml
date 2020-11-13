function how_long() {
	days = floor(date_day_span(start_time,date_current_datetime()));
	hours = floor(date_hour_span(start_time,date_current_datetime()));
	minutes = floor(date_minute_span(start_time,date_current_datetime()));

	if (minutes > 59)
	{
		minutes = minutes - (hours * 60);
	}

	if (hours > 23)
	{
		hours = hours - (days * 24);
	}

	return string(days)+" days, " + string(hours) + " hours, and " + string(minutes) + " minutes ";


}
