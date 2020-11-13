/// @function	vsws_core_config();

function vsws_core_config() {
	server_version = "0.4"; //Hardcoded for a reason - if you fork this code, feel free to change it!

	date_set_timezone(timezone_utc); //Sets timezone to UTC - you might get some weird results if you change this. 

	start_time = date_current_datetime();

	port = 80; //Sets the port for your server - port 80 is the default for websites, but others can be used!

	directory = working_directory; //Sets the default directory to the working directory - this will change shortly if there is a configuration file present.

	php_enabled = false; //Sets the default PHP state to disabled until otherwise specified.

	php_path = ""; //Sets the default PHP.exe path to nothing.
	
	editable_config = true; //Set this to false if you'd like your configuration hardcoded (by changing the values above). Otherwise, users can edit the configuration file after first run of the program.

	//Checks if a configuration file already exists, and if it does, loads values from it. Otherwise, it creates one with the defualts just set.
	if (editable_config == true)
	{
	if (file_exists("vsws_config.ini"))
		{
			ini_open("vsws_config.ini");
		
			port = ini_read_real("core", "port", 80);
			directory = ini_read_string("core", "directory", "");
			php_enabled = ini_read_real("php", "enabled", false);
			php_path = ini_read_string("php", "php_path", "");
		
			global.first_start = false;
		
			ini_close();
		}
	else
		{
			ini_open("vsws_config.ini");
		
			ini_write_string("core", "port", port);
			ini_write_string("core", "directory", directory);
			ini_write_string("php", "enabled", php_enabled);
			ini_write_string("php", "php_path", php_path);
		
			global.first_start = true;
		
			ini_close();
		}
	}

}

/// @function vsws_core_init();

function vsws_core_init(){
	
	/// @Description	This script initialises VSWS, including calling the configuration process.
	///					It should be put in the create event of the object running all VSWS processes.
	
	connectedClients = 0;

	files = "";

	log_string = "";

	original_request = "";

	log_num = 0;

	counted_size = 0;

	server_created = network_create_server_raw(network_socket_tcp, port, 99);

	if (server_created < 0)
	{
		log("WARNING: Could not start server on port "+string(port));
		show_error("Server could not be created on port "+string(port)+". If this error persists, try restarting this machine.",false);
	}
	else
	{
		log("Server started on port "+string(port));
	}

	server_start_time = current_gmt();

	request_holder = ds_map_create();
}