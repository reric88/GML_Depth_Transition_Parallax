// Set Button bounding box color
draw_set_color(HoverColor);


// Draw button bounding box (Can also use sprites)
draw_rectangle(x - Width, y - Height, x + Width, y + Height, false)
//draw_rectangle(guiw - Width, guih - Height, guiw + Width, guih + Height, false)


// Set draw settings
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);


// Draw text
draw_text(x, y, String);


// Revert draw settings
draw_set_color(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);


