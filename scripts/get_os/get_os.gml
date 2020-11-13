function get_os() {
	//Gets the OS that the server is running on.

	switch (os_type)
	    {
	    case os_windows: os = "Windows"; break;
	    case os_android: os = "Android"; break;
	    case os_linux: os = "Linux"; break;
	    case os_macosx: os = "MacOS"; break;
	    case os_ios: os = "iPhone"; break;
	    case os_winphone: os = "WinPhone"; break;
	    }


}
