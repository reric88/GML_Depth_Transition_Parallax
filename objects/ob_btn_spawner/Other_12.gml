with(ob_btn1){
	instance_destroy();
}

// Check
var Button_Check = instance_create_depth(guiw*.13, guih - 52, -4096, ob_btn1);
Button_Check.BUTTON_TYPE = 2.1;
Button_Check.HoverValue = 1;

// Talk
var Button_Talkk = instance_create_depth(guiw*.38, guih -52, -4096, ob_btn1);
Button_Talkk.BUTTON_TYPE = 2.2;
Button_Talkk.HoverValue = 2;

// Back
var Button_Back = instance_create_depth(guiw*.62, guih -52, -4096, ob_btn1);
Button_Back.BUTTON_TYPE = 99;
Button_Back.HoverValue = 3;

