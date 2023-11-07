 with (other)
 {
	 hp--;
	 flash = 3;
	 hitFrom = other.direction;
	 // other in a with statement calls to the origional object, in this case its the oBullet
	 
 }
 
 instance_destroy();
 // other is targeting the specific oEnemy that is colliding with the oBullet
 