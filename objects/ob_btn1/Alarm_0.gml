// Set Button string



// Button type determines the function of the button



// 0 = Default, 1 = FIGHT, 2 = ACTIONS, 3 = ITEMS, 4 = TIME

switch(BUTTON_TYPE){
		case 1: // Fight
			String = "Fight";
			break;
			
		case 1.1: // Attack
			String = "Attack";
			break;
			
		case 1.2: // Defend
			String = "Defend";
			break;
			
		case 2: // Actions
			String = "Actions";
			break;
			
		case 2.1: // Check
			String = "Check";
			break;
			
		case 2.2: // Talk
			String = "Talk";
			break;
					
		case 3: // Items
			String = "Items";
			break;
			
		case 3.1: // Use item
			String = "Use Items";
			break;
					
		case 4: // Time
			String = "Time";
			break;
			
		case 4.1: // Skip battle
			String = "Skip";
			break;
			
		case 4.2: // Reset Battle
			String = "Reset";
			break;
			
		case 98: // Exit Battle
			String = "Exit";
			break;
						
		case 99: // Back
			String = "Back";
			break;
			
		default:
			String = "";
			break;
}
