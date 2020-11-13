///vsws_draw_button(y,text)
function vsws_button(argument0, argument1, argument2) {

	button_x = argument0;
	button_y = argument1;
	button_text = argument2;

	button_width = window_get_width();
	button_height = 22;

	if (point_distance(button_x,button_y+(button_height/2),mouse_x,y+(button_height/2)) < button_width && point_distance(button_x+button_width,button_y+(button_height/2),button_x+button_width,mouse_y) < (button_height/2))
	{
		hover = true;
		draw_set_alpha(1);
	}
	else
	{
		hover = false;
		draw_set_alpha(0.5);
	}

	draw_set_color(c_black);
	draw_rectangle(button_x,button_y,button_width,button_y+button_height,false);
	draw_set_color(c_white);
	draw_text(button_x+2,button_y,button_text);

	draw_set_alpha(1);

	if (hover == true && mouse_check_button_pressed(mb_left))
	{
		return true;
	}
	else
	{
		return false;
	}


}
