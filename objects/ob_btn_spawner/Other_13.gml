with(ob_btn1){
	instance_destroy();
}

// Use item
var Button_Use = instance_create_depth(guiw*.13, guih - 52, -4096, ob_btn1);
Button_Use.BUTTON_TYPE = 3.1;
Button_Use.HoverValue = 1;

// Back
var Button_Back = instance_create_depth(guiw*.38, guih -52, -4096, ob_btn1);
Button_Back.BUTTON_TYPE = 99;
Button_Back.HoverValue = 2;

