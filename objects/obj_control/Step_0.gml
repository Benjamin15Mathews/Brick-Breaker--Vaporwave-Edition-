enter = keyboard_check_pressed(vk_enter)
go += enter
show_debug_message(level)
//Music
if audio_is_playing(mus_bg1) ms = 1
if audio_is_playing(mus_bg2) ms = 2
if audio_is_playing(mus_bg3) ms = 3
if audio_is_playing(mus_bg4) ms = 4


if (!audio_is_playing(mus_bg1) && !audio_is_playing(mus_bg2) && !audio_is_playing(mus_bg3) && !audio_is_playing(mus_bg4))
{
	audio_stop_all()
	switch ms
	{
		case 1 : audio_play_sound(mus_bg2, 0, false); break;
		case 2 : audio_play_sound(mus_bg3, 0, false); break;
		case 3 : audio_play_sound(mus_bg4, 0, false); break;
		case 4 : audio_play_sound(mus_bg1, 0, false); break;
	}
}


//show_debug_message(ms)






switch room
{
	case rm_GAME_LV1:
	if keyboard_check_pressed(ord("B")) instance_destroy(obj_brick)
		if (obj_paddle.alpha ==-.05) and ((!instance_exists(obj_brick) or lives <= 0))
		{
			if lives > 0
			{
				level++
			}
			room_goto_next()
		}
		lock = 0
		
		//LIVES PRINT
		if alpha_lives[0] <= 1 and instance_exists(obj_ball) and instance_exists(obj_brick) and lives >0
		{
			alpha_lives[0] += .05
			alpha_lives[1] += .05
			alpha_lives[2] += .05
			alpha_lives[3] += .05
		}

		//Fade Out
		if alpha_lives[0] >=0 and !instance_exists(obj_brick)
		{
			alpha_lives[0] -=.05
			alpha_lives[1] -=.05
			alpha_lives[2] -=.05
			alpha_lives[3] -=.05
		}
		if alpha_lives[0] >=0 and lives <= 0
		{
			alpha_lives[0] -=.05
			alpha_lives[1] -=.05
			alpha_lives[2] -=.05
			alpha_lives[3] -=.05
		}
		break;
		
	case rm_WIN:
		if alpha_win <= 1 and lock = 0
		{
			alpha_win += .05 //PRINTS YOU WIN
		}
		
		if alpha_win >= .5 and alarm[1] <=0
		{
			obj_control.alarm[1] = 120; //2s TIMER FOR ENTER TEXT
		}
		
		

		if continue_go == 1 and alpha_continue <= 1 and lock = 0
		{
			alpha_continue += .05 //PRINTS ENTER TEXT
		}
		if alpha_continue >=1
		{
			lock = 1 //IF THE TEXT IS FULLY IN LOCK IT FROM INCREASING ALPHA
		}
		
		if enter and lock == 1 {lock = 2}//HAVE A ENTER LOCK
		
		if go >= 1 and continue_go >=1 and lock >=2
		{
			alpha_continue -=.01
			alpha_win -=.01
			
			if alpha_continue == 0
			{
				if level == 4 level = 1
				if lives<=0 {score = 0;lives = 3;death = 0;level = 1}
				room_goto(rm_GAME_LV1);
			}
		}
		break;
}

//show_debug_message(level)