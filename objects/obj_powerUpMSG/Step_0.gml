if start == 0 and alpha <= 1
{
	alpha +=.1
}
if start == 0 and alpha >= 1 and alarm[0] !=40 and alarm[0] <=0
{
	alarm[0] = 40
}


if start >= 1
{
	alpha -=.05
}
if sprite_index == spr_extraLifeMSG
{
	if start == 1 and alpha <=0 instance_destroy()
}
else
{
	if start == 1 and alpha <=0 and global.SpeedPowerACTIVE == 0
	{
		start = 0
		alpha = 0
	}
	else if global.SpeedPower == 0 and global.SpeedPowerACTIVE ==0
	{
		instance_destroy()
	}
	
}
	