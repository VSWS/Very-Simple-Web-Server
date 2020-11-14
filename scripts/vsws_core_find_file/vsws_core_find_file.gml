function vsws_core_find_file()
{
		   //If the GET is empty (ie, www.example.com/ ) the server selects the file to look for as the default home file (by default, this is index.html - the existence of a index.php with PHP enabled supersedes this)
			if (file_get_final == "")
			{
				file_get_replace = ""
				
				if (file_exists(directory+file_get+"index.html"))
				{
					file_get_replace = "/"+file_get+"index.html";
				}
				if (file_exists(directory+file_get+"index.php") && php_enabled == true)
				{
					file_get_replace = "/"+file_get+"index.php";
				}
				
				file_get = file_get_replace;
			}
			
			//Checks to see if the file that's being looked for is loaded into the server
			if (file_exists(directory+"/"+file_get))
			{
				file_get = directory+"/"+file_get//If it is found, the correct path to read from is designated.
				status_code = 200; //And status code 200 is returned for OK.
			}
			else
			{   		
				//If it's not loaded into the server, it checks to see if there's a custom 404 page loaded. If not, it will select the default 404.html file.
				file_get_replace = "404.html";
			
				if (file_exists(directory+"404.html"))
				{
					file_get_replace = directory+"404.html";
				}
				if (file_exists(directory+"404.php") && php_enabled == true)
				{
					file_get_replace = directory+"404.php";
				}
			
				file_get = file_get_replace;
			
				status_code = 404;
			}
}