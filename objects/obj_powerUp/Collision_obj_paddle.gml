switch sprite_index
{
	case spr_newlife: audio_play_sound(sd_newLife,1,0)
					  lives += 1
					  msg = instance_create_layer(20,400,"Control",obj_powerUpMSG)
					  with msg
					  {
						  sprite_index = spr_extraLifeMSG
					  }
					  instance_destroy()break;
	case spr_SPEEDBOOST: audio_play_sound(sd_newLife,1,0)
						msg1 = instance_create_layer(550,400,"Control",obj_powerUpMSG)
						with msg1
						{
							  sprite_index = spr_SPEEDBOOSTmsg
						}
						global.SpeedPower = 1
						instance_destroy()break;
}