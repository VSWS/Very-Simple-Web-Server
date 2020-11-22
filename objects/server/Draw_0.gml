draw_set_font(ui_font);
draw_set_color(global.Theme_mainpage_fontcolor);

//Output on your screen.

//draw_text(0,0,debug_draw);

draw_text(50,percent(window_get_height(),10),"Since the server started "+how_long()+"ago...")
draw_set_font(ui_font_big);
draw_text(50,percent(window_get_height(),12),string(connectedClients)+" total connections \n"+string(counted_size*0.00000095367432)+" MB of data sent");
draw_set_font(ui_font);
draw_text(50,percent(window_get_height(),20)+100,"it is currently "+string(tiny_time()));
draw_set_color(c_black);

//draw_text(0,48,string_hash_to_newline(files));

//for(i = 0; i < array_length(original_request); i++)
//{
//	draw_text(200,14*i,original_request[i]);
//}