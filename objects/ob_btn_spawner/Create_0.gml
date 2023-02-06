guiw = display_get_gui_width();
guih = display_get_gui_height();

HoverValue = 0;
KeyboardToggle = false;

// Fight
var Button_Fightt = instance_create_depth(guiw*.13, guih - 52, -4096, ob_btn1);
Button_Fightt.BUTTON_TYPE = 1;
Button_Fightt.HoverValue = 1;

// Actions
var Button_Actions = instance_create_depth(guiw*.38, guih -52, -4096, ob_btn1);
Button_Actions.BUTTON_TYPE = 2;
Button_Actions.HoverValue = 2;

// Items
var Button_Itemss = instance_create_depth(guiw*.62, guih -52, -4096, ob_btn1);
Button_Itemss.BUTTON_TYPE = 3;
Button_Itemss.HoverValue = 3;

// Time button
var Button_Time = instance_create_depth(guiw*.87, guih -52, -4096, ob_btn1);
Button_Time.BUTTON_TYPE = 4;
Button_Time.HoverValue = 4;
