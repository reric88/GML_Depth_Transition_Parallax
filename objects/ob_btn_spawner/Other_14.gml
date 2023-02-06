with(ob_btn1){
	instance_destroy();
}

// Skip Battle
var Button_Skip = instance_create_depth(guiw*.13, guih - 52, -4096, ob_btn1);
Button_Skip.BUTTON_TYPE = 4.1;
Button_Skip.HoverValue = 1;

// Reset Battle
var Button_Reset = instance_create_depth(guiw*.38, guih -52, -4096, ob_btn1);
Button_Reset.BUTTON_TYPE = 4.2;
Button_Reset.HoverValue = 2;

// Back
var Button_Back = instance_create_depth(guiw*.62, guih -52, -4096, ob_btn1);
Button_Back.BUTTON_TYPE = 99;
Button_Back.HoverValue = 3;

