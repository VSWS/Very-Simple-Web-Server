var i_d = ds_map_find_value(async_load, "id");

if i_d == php_add
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {
				server.php_path = ds_map_find_value(async_load, "result");
				
				server.php_enabled = true;
				
				ini_open("vsws_config.ini");
		
				ini_write_string("php", "php_path", server.php_path);
				
				ini_write_string("php", "enabled", true);
		
				ini_close();	
            }
        }
    }
	
if i_d == new_directory
    {
    if ds_map_find_value(async_load, "status")
        {
        if ds_map_find_value(async_load, "result") != ""
            {	
				server.directory = ds_map_find_value(async_load, "result");
				
				if (string_char_at(server.directory, string_length(server.directory)) != "/" && string_char_at(server.directory, string_length(server.directory)) != "\\")				
				{
					server.directory = server.directory + "/"
				}
				
				ini_open("vsws_config.ini");
		
				ini_write_string("core", "directory", server.directory);
		
				ini_close();
            }
        }
    }