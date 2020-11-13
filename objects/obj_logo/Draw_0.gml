y = (view_hport[0]-96);
draw_self();
draw_set_color(c_white);
draw_text(x+215,y+45,server.server_version);
draw_set_color(c_black);















































if (click_count > 26 && click_count < 28)
{
	draw_text(x+250,y+20,string_hash_to_newline(global.hidden_message));
}