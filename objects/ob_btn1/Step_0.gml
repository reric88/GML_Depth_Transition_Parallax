

// Check mouse hover

//if (point_in_rectangle(mouse_x, mouse_y, x-Width, y-Height, x+Width, y+Height)){
if (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x-Width, y-Height, x+Width, y+Height)){
//if (point_in_rectangle(mouse_x, mouse_y, guiw-Width, guih-Height, guiw+Width, guih+Height)){
	Hover = 1;
	HoverColor = #0072BC;
	
	ob_btn_spawner.KeyboardToggle = false;
	
	if (mouse_check_button(mb_left)){
		Hover = 2;
		HoverColor = c_ltgray
	}
}

// Check keyboard toggle
else if (HoverValue == ob_btn_spawner.HoverValue) && (ob_btn_spawner.KeyboardToggle == true){
	Hover = 1;
	HoverColor = #0072BC;
		if (keyboard_check_pressed(vk_space)){
			Hover = 2;
			HoverColor = c_ltgray;
		}
}

// Reset hover value if mouse left

else{
	Hover = 0;
	HoverColor = c_white;
}

//Check if button is pressed
// 0 = Default, 1 = FIGHT, 2 = TALK, 3 = ITEMS, 4 = RUN
if oBattle.state != bstates.playerchoose && oBattle.state != bstates.battleexit{
exit;
}

if (Hover == 1){
	if (mouse_check_button_released(mb_left)) && (point_in_rectangle(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), x-Width, y-Height, x+Width, y+Height)) || (keyboard_check_released(vk_space)){
		
		ob_btn_spawner.HoverValue = 0;
		
		// 0 = Default, 1 = FIGHT, 2 = ACTIONS, 3 = ITEMS, 4 = TIME, 99 = Back
		
		switch(BUTTON_TYPE){
				
				case 1: // Fight
					with(ob_btn_spawner){
						event_user(0);
					}
					break;
					
				case 1.1: // Attack
							oEnemy.hp -= oPlayer.myAttack;
							with oBattle {
								state = bstates.playerdealdamage;
								if oEnemy.hp <= 0 {
									state = bstates.battleend;
									alarm[3] = 120;
								} else {
									alarm[1] = 60;
								}
							}
						with(ob_btn_spawner){
						event_user(1);	
						}
					break;
					
				case 1.2: // Defend
						oPlayer.hp += 30;
							with oBattle {
								state = bstates.playerdealdamage;
								alarm[1] = 60;
							}
							with(ob_btn_spawner){
							event_user(1);	
							}
					break;					
					
				case 2: // Actions
					with(ob_btn_spawner){
						event_user(2);	
					}
					break;
					
				case 2.1: // Check
						oEnemy.hp -= oPlayer.myAttack + 100;
							with oBattle {
								state = bstates.playerdealdamage;
								if oEnemy.hp <= 0 {
									state = bstates.battleend;
									alarm[3] = 120;
								} else {
									alarm[1] = 60;
								}
							}
						with(ob_btn_spawner){
						event_user(1);	
						}				
					break;
					
				case 2.2: // Talk
				
					break;
					
				case 3: // Items
					with(ob_btn_spawner){
						event_user(3);	
					}

				case 3.1: // Item select
				
					break;
					
				case 4: // Time
					with(ob_btn_spawner){
						event_user(4);	
					}
				
					break;
					
				case 4.1: // Skip Battle
					game_end();
					break;
					
				case 4.2: // Reset Battle
					room_restart();
					break;
					
				case 98: // Exit
					game_end();
					break;
					
				case 99: // Back
					with(ob_btn_spawner){
						event_user(1);	
					}
					break;
					
				default:
				
					break;
		}
	}
}
