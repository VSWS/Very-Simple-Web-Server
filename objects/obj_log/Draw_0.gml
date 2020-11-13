draw_self();
draw_log_string = "";

if (active == true)
{
    x = 0;
    draw_rectangle(16,0,room_width,room_height,false)

    draw_set_color(c_white);
	draw_text(x+5,y+16,">");
	
	for(i = 0; i < array_length_1d(server.log_string); i++)
	{
		draw_log_string = server.log_string[i] + "\n" + draw_log_string;
	}
	
    draw_text(66,75+scroll,string_hash_to_newline(draw_log_string));
    draw_set_color(c_black);
}
else
{
	draw_set_color(c_white);
	draw_sprite_ext(spr_log,0,x-32,y,0.5,0.5,0,c_white,1);
	draw_text(x+5,y+16,"<");
	draw_set_color(c_black);
    x = view_wport[0]-sprite_width;
	y = view_hport[0]/2-34;
	scroll = 0;
}