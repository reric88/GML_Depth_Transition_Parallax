right_key = keyboard_check(vk_right);
up_key = keyboard_check(vk_up);
left_key = keyboard_check(vk_left);
down_key = keyboard_check(vk_down);


// Get xspd and yspd
xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;


// Set mask of DOWN to all sprites
mask_index = sprite[DOWN]


// Set sprite
if yspd == 0
	{
	if xspd > 0 {face = RIGHT};
	if xspd < 0 {face = LEFT};
	}
if xspd > 0 && face == LEFT {face = RIGHT};
if xspd < 0 && face == RIGHT {face = LEFT};
	
	
if xspd == 0
	{
	if yspd > 0 {face = DOWN};
	if yspd < 0 {face = UP};
	}
if yspd > 0 && face == UP {face = DOWN};
if yspd < 0 && face == DOWN {face = UP};


sprite_index = sprite[face];


// Collisions
if place_meeting(x + xspd, y, ob_wall)
	{
	xspd = 0;	
	}
if place_meeting(x, y + yspd, ob_wall)
	{
	yspd = 0;	
	}
	
	
// Move the Player
x += xspd;
y += yspd;


// Animate
if xspd == 0 && yspd == 0
	{
	image_index = 1.9;	
	}
	
// Depth
depth = -bbox_bottom

// Flashing after hit

