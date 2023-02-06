// Set Button string



// Button type determines the function of the button



// 0 = Default, 1 = Play, 2 = Options, 3 = Quit, 4 = Options back to main

switch(BUTTON_TYPE){
		case 1: // Play
			String = "Play";
			break;
					
		case 2: // Options
			String = "Options";
			break;
					
		case 3: // Quit
			String = "Quit";
			break;
					
		case 4: // Go Back
			String = "Back";
			break;
					
		default:
			String = "";
			break;
}
