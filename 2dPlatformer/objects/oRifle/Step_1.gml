 x = oPlayer.x;
y = oPlayer.y-10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay = firingDelay - 1;
recoil = max(0,recoil - 1);

if (mouse_check_button(mb_left)) && (firingDelay < 0)
{
	recoil = 4;
	firingDelay = 5;
	with (instance_create_layer(x,y,"Bullet",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range (-3,3);
		image_angle = direction;
		//other referrs back the the otigional object which is the oRifle
		// with statement allows us to referr to the oBullet we are telling 
		// it to have the same direction as the angle of the rifle.
	}
}

x = x - lengthdir_x(recoil, image_angle);
y = y - lengthdir_y(recoil, image_angle);

// lengthdir_x and lengthdir_y. When you know the angle and how far you want an object to move, these functions
// return the number of pixels in said axis to reach that position.

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;	
}