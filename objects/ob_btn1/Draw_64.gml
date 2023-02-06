// Set Button bounding box color
draw_set_color(HoverColor);


// Draw button bounding box (Can also use sprites)
draw_rectangle(x - Width, y - Height, x + Width, y + Height, false)
draw_set_color(c_black);
draw_rectangle(x - Width + 2, y - Height + 2, x + Width - 2, y + Height - 2, false)

//draw_rectangle(guiw - Width, guih - Height, guiw + Width, guih + Height, false)

//draw_sprite_stretched(sp_button_empty, 0, x-Width, y-Height, 180, 64)


// Set draw settings
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// Draw text
draw_set_color(HoverColor);
draw_set_font(global.font_main)
draw_text_transformed(x, y, String, 3, 3, 0) //(x, y, String);


// Revert draw settings
draw_set_color(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
