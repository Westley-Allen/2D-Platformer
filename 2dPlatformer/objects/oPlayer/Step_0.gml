 // Inputs
key_left = keyboard_check(ord("A"));
	key_right = keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);

//Movement
	var move = key_right - key_left;

	hsp = move * walksp;

	vsp = vsp + grv;

if (place_meeting(x,y+1,oWall)) && (key_jump)
{
	vsp = -7
};

//Horizontal Collision
if(place_meeting(x+hsp,y,oWall))
{
	while(!place_meeting(x+sign(hsp),y,oWall))
	{
	x = x + sign(hsp);
	}	
hsp = 0;
};

x = x + hsp;

//Vertical Collision
if(place_meeting(x,y+vsp,oWall))
{
	while(!place_meeting(x,y+sign(vsp),oWall))
	{
	y = y + sign(vsp);
	}
	
	vsp = 0;

};

	y = y + vsp;

//Animation
if(!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerJ;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
	}
}

if (hsp != 0) image_xscale = sign(hsp);


//Grappling Hook

// Checking Hook
if(mouse_check_button_pressed(mb_right))
{
	mx = mouse_x;
	my = mouse_y;
	if(place_meeting(mx,my,oWallG))
	{
		active = true;
	}
}

if(active)
{
	
	x += (mx - x) * 0.1;
	y += (my - y) * 0.1;
}

if(mouse_check_button_released(mb_right))
{
	active = false;
}
