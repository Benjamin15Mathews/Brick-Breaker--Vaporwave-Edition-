//launch ball

if global.SpeedPower == 1 and global.SpeedPowerACTIVE != 1
{
	global.SpeedPowerACTIVE = 1
	obj_cameraShake.shake = true
	with obj_cameraShake
	{
		alarm[0] = 120
	}
}