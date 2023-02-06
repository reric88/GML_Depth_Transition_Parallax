with(ob_btn1){
	instance_destroy();
}

// Exit
var Button_Exit = instance_create_depth(guiw/2, guih/2 + 80, -4096, ob_btn1);
Button_Exit.BUTTON_TYPE = 98;
Button_Exit.HoverValue = 1;

irandom_range(1,2)
