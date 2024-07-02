if alpha <= 1 and instance_exists(obj_paddle) and instance_exists(obj_brick) and lives > 0
{
	alpha += .05
}

//Fade Out
if alpha >=0 and !instance_exists(obj_brick)
{
	alpha -=.05
}

if lives <= 0
{
	if alpha >=0
	{
		alpha -=.05
	}
}