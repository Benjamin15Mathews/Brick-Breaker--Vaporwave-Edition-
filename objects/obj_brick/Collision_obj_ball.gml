if instance_exists(obj_ball)
{
	with obj_ball
	{
		if global.SpeedPowerACTIVE == 0	move_bounce_solid(true)
		scr_move_out()
	}
}

switch sprite_index
{
	case spr_brick_basic:instance_destroy()
						 audio_play_sound(sd_ballbrick,0,0)
						 score += 10 break;
	case spr_brick_double: if (blockReflect == 1) blockReflect = 0
							   if (blockReflect == 2)
							   {
								   instance_destroy()
								   audio_play_sound(sd_ballbrick,0,0)
								   score += 10 
							   }
							if global.SpeedPowerACTIVE == 1
							{
								instance_destroy()
								audio_play_sound(sd_ballbrick,0,0)
								score += 10 
							}break;
	case spr_brick_invunruble: 
	
			//show_debug_message("THIS IS INV")
	
							if blockReflect == 1
							{
									if y-obj_ball.y > -brickDrawHeight
									{
										show_debug_message("BALL ABOVE")
										instance_destroy()
									    audio_play_sound(sd_ballbrick,0,0)
										score += 10 
									 
									}
									else show_debug_message("BALL ABOVddfdsfdsfs");
							}
							else if blockReflect == 3
							{
								if y-obj_ball.y < -brickDrawHeight
								{
									show_debug_message("BALL BELLOW")
									instance_destroy()
									audio_play_sound(sd_ballbrick,0,0)
									score += 10 
								}
							}
							else if (blockReflect == 2)
							{
							instance_destroy()
							audio_play_sound(sd_ballbrick,0,0)
							score += 10}
							if global.SpeedPowerACTIVE == 1
							{
								instance_destroy()
								audio_play_sound(sd_ballbrick,0,0)
								score += 10 
							}break;break;
	case spr_brick_extraLife: powerUp = instance_create_layer(x+63/2,y+38/2,"PowerUps",obj_powerUp)
							  with powerUp
							  {
								  sprite_index = spr_newlife
							  }
							  score += 10
							  instance_destroy()break;
	case spr_brick_SPEEDBOOST: powerUp = instance_create_layer(x+63/2,y+38/2,"PowerUps",obj_powerUp)
							   with powerUp
							   {
							  	   sprite_index = spr_SPEEDBOOST
							   }
							   score += 10
							   instance_destroy()break;
}



