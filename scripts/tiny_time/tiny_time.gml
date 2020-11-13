function tiny_time() {
	//Updates the "tinytime" variable to the current time in GMT + formatted much nicer than current_gmt.

	var date = current_day;

	var year = current_year;

	var hour = current_hour;

	var minute = current_minute;

	var second = current_second;

	if (hour < 10)
	{
	    hour = "0"+string(hour);
	}


	if (minute < 10)
	{
	    minute = "0"+string(minute);
	}

	if (second < 10)
	{
	    second = "0"+string(second);
	}

	tinytime = string(date) + "/" + string(current_month) + "/" + string(year) +" "+string(hour)+":"+string(minute)+":"+string(second);

	return tinytime;


}
