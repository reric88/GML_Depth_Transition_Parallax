// Spawn main menu buttons

with(ob_btn1){
	instance_destroy();
}

var Button_Attack = instance_create_depth(guiw*.13, guih - 52, -4096, ob_btn1);
Button_Attack.BUTTON_TYPE = 1.1;
Button_Attack.HoverValue = 1;

var Button_Defend = instance_create_depth(guiw*.38, guih -52, -4096, ob_btn1);
Button_Defend.BUTTON_TYPE = 1.2;
Button_Defend.HoverValue = 2;

var Button_Back = instance_create_depth(guiw*.62, guih -52, -4096, ob_btn1);
Button_Back.BUTTON_TYPE = 99;
Button_Back.HoverValue = 3;
