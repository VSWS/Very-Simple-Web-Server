function current_gmt() {
	//Returns the current HTTP formatted time / date in GMT.

	var day;
	 switch(current_weekday)
	    {
	    case 0: day = "Sun"; break;
	    case 1: day = "Mon"; break;
	    case 2: day = "Tue"; break;
	    case 3: day = "Wed"; break;
	    case 4: day = "Thu"; break;
	    case 5: day = "Fri"; break;
	    case 6: day = "Sat"; break;
	    }

	var month;
	    switch(current_month)
	    {
	    case 1: month = "Jan"; break;
	    case 2: month = "Feb"; break;
	    case 3: month = "Mar"; break;
	    case 4: month = "Apr"; break;
	    case 5: month = "May"; break;
	    case 6: month = "Jun"; break;
	    case 7: month = "Jul"; break;
	    case 8: month = "Aug"; break;
	    case 9: month = "Sep"; break;
	    case 10: month = "Oct"; break;
	    case 11: month = "Nov"; break;
	    case 12: month = "Dec"; break;
	    }
    
	var date = current_day;

	var year = current_year;

	var hour = current_hour;

	global.hidden_message = "Hopefully the 27 time's the charm!#-Grant Imahara";

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

	datetime = string(day) + ", " + string(date)+" "+string(month)+" "+string(year);

	datetime = datetime + " " + string(hour) + ":" + string(minute) + ":" + string(second)+" GMT";

	return datetime;


}
