draw_self();
draw_set_color(c_black);

if (active == true)
{
    x = 16;
	draw_set_color(c_white);
    draw_rectangle(32,0,room_width,room_height,false)

	draw_text(x+5,y+20,">");

	draw_set_color(c_black);
	
	draw_text(32,100-22,"Click to change the directory you're hosting:") 

	draw_set_color(c_black);

	if (vsws_button(32,100,server.directory))
	{
	new_directory = get_string_async("Enter the directory you'd like to host", server.directory);
	}
	
	draw_set_color(c_black);
	draw_text(32,200-22,"Click to add a php-cgi.exe and enable PHP on your server:") 

	if (vsws_button(32,200,server.php_path))
	{
	php_add = get_string_async("Enter the path to your php-cgi.exe file", server.php_path);
	}
	
    draw_set_color(c_black);
}
else
{
	draw_set_color(c_white);
	draw_sprite_ext(spr_configure,0,x-32,y,0.5,0.5,0,c_white,1);
	draw_text(x+5,y+20,"<");
	draw_set_color(c_black);
    x = view_wport[0]-sprite_width;
	y = view_hport[0]/2 + 34;
}