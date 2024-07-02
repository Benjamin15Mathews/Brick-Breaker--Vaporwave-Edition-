draw_set_alpha(alpha_lives[0])
draw_text(660-string_width("Lives:"),550 - string_height("Lives:")/2,"Lives:")
draw_text(140-string_width("Score: "),550 - string_height("Lives:")/2,"Score: "+string(score))

if room == rm_GAME_LV1
{
	switch lives
	{
		case 6:
			alpha_lives[7] = .5
			alpha_lives[6] = 1
			alpha_lives[5] = 1
			alpha_lives[4] = 1
			alpha_lives[3] = 1
			alpha_lives[2] = 1
			alpha_lives[1] = 1
			break;
			
		case 5:
			alpha_lives[7] = .5
			alpha_lives[6] = .5
			alpha_lives[5] = 1
			alpha_lives[4] = 1
			alpha_lives[3] = 1
			alpha_lives[2] = 1
			alpha_lives[1] = 1
			break;
		
		case 4:
			alpha_lives[7] = .5
			alpha_lives[6] = .5
			alpha_lives[5] = .5
			alpha_lives[4] = 1
			alpha_lives[3] = 1
			alpha_lives[2] = 1
			alpha_lives[1] = 1
			break;
		
		case 3:
			alpha_lives[3] = 1
			alpha_lives[2] = 1
			alpha_lives[1] = 1
			
			break;
			
		case 2:
			alpha_lives[3] = .5
			alpha_lives[2] = 1
			alpha_lives[1] = 1
			
			break;
		
		case 1:
			alpha_lives[3] = .5
			alpha_lives[2] = .5
			alpha_lives[1] = 1
			
			break;
	
		case 0:
			alpha_lives[1] = .5
			break;
		default:
			alpha_lives[1] = 1
			alpha_lives[2] = 2
			alpha_lives[3] = 3
			alpha_lives[4] = 1
			alpha_lives[5] = 2
			alpha_lives[6] = 3
			alpha_lives[7] = 1

			break;
	}
	if lives <=3 and lives >=0
	{
		draw_set_alpha(alpha_lives[3])
		draw_sprite(spr_ball,0,690,550)
		draw_set_alpha(alpha_lives[2])
		draw_sprite(spr_ball,0,720,550)
		draw_set_alpha(alpha_lives[1])
		draw_sprite(spr_ball,0,750,550)
		draw_set_alpha(1)
	}
	else if lives >=4 and lives <=6
	{
		draw_set_alpha(alpha_lives[3])
		draw_sprite_ext(spr_ball,0,690,535,.8,.8,0,c_white,alpha_lives[3])
		
		draw_set_alpha(alpha_lives[2])
		draw_sprite_ext(spr_ball,0,720,535,.8,.8,0,c_white,alpha_lives[2])
		
		draw_set_alpha(alpha_lives[1])
		draw_sprite_ext(spr_ball,0,750,535,.8,.8,0,c_white,alpha_lives[1])
		
		draw_set_alpha(alpha_lives[4])
		draw_sprite_ext(spr_ball,0,690,565,.8,.8,0,c_white,alpha_lives[4])
		
		draw_set_alpha(alpha_lives[5])
		draw_sprite_ext(spr_ball,0,720,565,.8,.8,0,c_white,alpha_lives[5])
		
		draw_set_alpha(alpha_lives[6])
		draw_sprite_ext(spr_ball,0,750,565,.8,.8,0,c_white,alpha_lives[6])
		
		draw_set_alpha(1)
	}
	else
	{
		draw_text(690,550-15,string(lives)+"X")
		draw_sprite_ext(spr_ball,0,750,550,1.5,1.5,0,c_white,1)
	}
}

