/// @description content_type(file)
/// @param file
function content_type(argument0) {
	//returns the correct HTTP Content-Type attribute as a string for a given file

	var file_get_extension = argument0;
	var extension = string_delete(filename_ext(file_get_extension),1,1); //Gets the extension and removes the "." from it for easier use.

	switch(extension)
	    {
	    case "aac": to_return = "audio/aac"; break;
	    case "abw": to_return = "application/x-abiword"; break;
	    case "arc": to_return = "application/x-freearc"; break;
	    case "avi": to_return = "video/x-msvideo"; break;
	    case "azw": to_return = "application/vnd.amazon.ebook"; break;
	    case "bin": to_return = "application/octet-stream"; break;
	    case "bmp": to_return = "image/bmp"; break;
	    case "bz": to_return = "application/x-bzip"; break;
	    case "bz2": to_return = "application/x-bzip2"; break;
	    case "csh": to_return = "application/x-csh"; break;
	    case "css": to_return = "text/css"; break;
	    case "csv": to_return = "text/csv"; break;
	    case "doc": to_return = "application/msword"; break;
	    case "docx": to_return = "application/vnd.openxmlformats-officedocument.wordprocessingml.document"; break;
	    case "eot": to_return = "application/vnd.ms-fontobject"; break;
	    case "epub": to_return = "application/epub+zip"; break;
	    case "gz": to_return = "application/gzip"; break;
	    case "gif": to_return = "image/gif"; break;
	    case "htm": to_return = "text/html"; break;
	    case "html": to_return = "text/html"; break;
	    case "ico": to_return = "image/vnd.microsoft.icon"; break;
	    case "ics": to_return = "text/calendar"; break;
	    case "jar": to_return = "application/java-archive"; break;
	    case "jpeg": to_return = "image/jpeg"; break;
	    case "jpg": to_return = "image/jpeg"; break;
	    case "js": to_return = "application/javascript"; break;
	    case "json": to_return = "application/json"; break;
	    case "jsonld": to_return = "application/ld+json"; break;
	    case "mid": to_return = "audio/midi"; break;
	    case "midi": to_return = "audio/midi"; break;
	    case "mjs": to_return = "text/javascript"; break;
	    case "mp3": to_return = "audio/mpeg"; break;
	    case "mpeg": to_return = "video/mpeg"; break;
	    case "mpkg": to_return = "application/vnd.apple.installer+xml"; break;
	    case "odp": to_return = "application/vnd.oasis.opendocument.presentation"; break;
	    case "ods": to_return = "application/vnd.oasis.opendocument.spreadsheet"; break;
	    case "odt": to_return = "application/vnd.oasis.opendocument.text"; break;
	    case "oga": to_return = "audio/ogg"; break;
	    case "ogv": to_return = "video/ogg"; break;
	    case "ogx": to_return = "application/ogg"; break;
	    case "opus": to_return = "audio/opus"; break;
	    case "otf": to_return = "font/otf"; break;
	    case "png": to_return = "image/png"; break;
	    case "pdf": to_return = "application/pdf"; break;
	    case "php": to_return = "text/html"; break;//application/x-httpd-php"; break;
	    case "ppt": to_return = "application/vnd.ms-powerpoint"; break;
	    case "pptx": to_return = "application/vnd.openxmlformats-officedocument.presentationml.presentation"; break;
	    case "rar": to_return = "application/vnd.rar"; break;
	    case "rtf": to_return = "application/rtf"; break;
	    case "sh": to_return = "application/x-sh"; break;
	    case "svg": to_return = "image/svg+xml"; break;
	    case "swf": to_return = "application/x-shockwave-flash"; break;
	    case "tar": to_return = "application/x-tar"; break;
	    case "tif": to_return = "image/tiff"; break;
	    case "tiff": to_return = "image/tiff"; break;
	    case "ts": to_return = "video/mp2t"; break;
	    case "ttf": to_return = "font/ttf"; break;
	    case "txt": to_return = "text/plain"; break;
	    case "vsd": to_return = "application/vnd.visio"; break;
	    case "wav": to_return = "audio/wav"; break;
	    case "weba": to_return = "audio/webm"; break;
	    case "webm": to_return = "video/webm"; break;
	    case "webp": to_return = "image/webp"; break;
	    case "woff": to_return = "font/woff"; break;
	    case "woff2": to_return = "font/woff2"; break;
	    case "xhtml": to_return = "application/xhtml+xml"; break;
	    case "xls": to_return = "application/vnd.ms-excel"; break;
	    case "xlsx": to_return = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"; break;
	    case "xml": to_return = "text/xml"; break;
	    case "xul": to_return = "application/vnd.mozilla.xul+xml"; break;
	    case "zip": to_return = "application/zip"; break;
	    case "7z": to_return = "application/x-7z-compressed"; break;
	    default: to_return = "application/octet-stream";
	}

	return to_return;


}
