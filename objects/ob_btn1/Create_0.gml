// 0 = Default, 1 = FIGHT, 2 = TALK, 3 = ITEMS, 4 = RUN


enum buttons {
	attack,
	heal,
	escape,
	restart
}

text = "";


guiw = display_get_gui_width();
guih = display_get_gui_height();

button_sprite = noone;
BUTTON_TYPE = 0;
String = "";
Hover = 1;
Width = 90;
Height = 32;

HoverValue = 0;
HoverColor = c_white;

alarm[0] = 1;

confirm = keyboard_check_pressed(vk_space);
kup = keyboard_check_pressed(vk_up);
kdown = keyboard_check_pressed(vk_down);
kleft = keyboard_check_pressed(vk_left);
kright = keyboard_check_pressed(vk_right);
