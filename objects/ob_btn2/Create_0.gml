// 0 = Default, 1 = Play, 2 = Options, 3 = Quit, 4 = Options back to main

guiw = display_get_gui_width();
guih = display_get_gui_height();

BUTTON_TYPE = 0;
String = "";
Hover = 1;
Width = 32;
Height = 16;

HoverValue = 0;
HoverColor = c_white;

alarm[0] = 1;

confirm = keyboard_check_pressed(vk_space);
kup = keyboard_check_pressed(vk_up);
kdown = keyboard_check_pressed(vk_down);
kleft = keyboard_check_pressed(vk_left);
kright = keyboard_check_pressed(vk_right);
