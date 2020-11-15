// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function vsws_core_valid_check(){
	if (ds_map_find_value(request_db,"Request-Valid")) //Checks that the request is in fact valid
	{
		return true;
	}
	else
	{
		return false;
	}
}