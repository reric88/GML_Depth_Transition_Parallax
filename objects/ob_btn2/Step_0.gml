// Check mouse hover

//if (point_in_rectangle(mouse_x, mouse_y, x-Width, y-Height, x+Width, y+Height)){
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x-Width, y-Height, x+Width, y+Height)){
//if (point_in_rectangle(mouse_x, mouse_y, guiw-Width, guih-Height, guiw+Width, guih+Height)){
	Hover = 1;
	HoverColor = c_ltgray;
	
	ob_btn_spawner.KeyboardToggle = false;
	
	if (mouse_check_button(mb_left)){
		Hover = 2;
		HoverColor = c_gray
	}
}

// Check keyboard toggle
else if (HoverValue == ob_btn_spawner.HoverValue) && (ob_btn_spawner.KeyboardToggle == true){
	Hover = 1;
	HoverColor = c_ltgray;
}

// Reset hover value if mouse left

else{
	Hover = 0;
	HoverColor = c_white;
}

//Check if button is pressed
// 0 = Default, 1 = Play, 2 = Options, 3 = Quit, 4 = Options back to main
if (Hover == 1){
	if (mouse_check_button_released(mb_left)) && (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x-Width, y-Height, x+Width, y+Height)) || (keyboard_check_released(vk_space)){
		
		ob_btn_spawner.HoverValue = 0;
		
		switch(BUTTON_TYPE){
				
				case 1:
					room_goto(rm_battle_test_2);
					break;
					
				case 2: // Options
					with(ob_btn_spawner){
						event_user(0);	
					}
					break;
					
				case 3: // Quit
					game_end();
					break;
					
				case 4:
					with(ob_btn_spawner){
						event_user(1);	
					}
					break;
					
				default:
				
					break;
		}
	}
}
