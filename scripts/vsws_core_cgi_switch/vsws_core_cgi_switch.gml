function vsws_core_cgi_switch(){
//Decides if we're sending requested file to a processor - in this version of VSWS, only PHP is (officially) supported.
	if (string_delete(filename_ext(file_get),1,1) == "php" && php_enabled == true)
	{
		to_cgi = true;
	}
}