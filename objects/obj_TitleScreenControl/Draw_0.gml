draw_set_alpha(1)
draw_sprite(spr_titleText,0,room_width/2,0+sprite_get_height(spr_titleText))
show_debug_message("HELP: " +string(helpPromt))
show_debug_message("BrickMenu: " +string(brickMenu))
show_debug_message("Brick Highlight: " +string(brickHighLight))
draw_set_font(ft_aesthetic)
if helpPromt != 1
{
	//DRAW START GAME--------------------------------------------------------------------------------------------|
	if mouse_x >= STARTMIN_X and mouse_x <= STARTMAX_X and mouse_y >= STARTMIN_Y and mouse_y <= STARTMAX_Y//-----|
	{																									  //-----|
		draw_set_color(c_black)																			  //-----|
	}																									  //-----|
	else draw_set_color(c_white)																		  //-----|
	draw_text(room_width/2-string_width("START GAME")/2,0+sprite_get_height(spr_titleText)*2.5+50,"START GAME")//|
	//-----------------------------------------------------------------------------------------------------------|

	//DRAW HELP------------------------------------------------------------------------------------------------------------------|
	if mouse_x >= HELPMIN_X and mouse_x <= HELPMAX_X and mouse_y >= HELPMIN_Y and mouse_y <= HELPMAX_Y//-------------------------|
	{																								  //-------------------------|
		draw_set_color(c_black)																		  //-------------------------|
	}																								  //-------------------------|
	else draw_set_color(c_white)																	  //-------------------------|
	draw_text(room_width/2-string_width("HELP")/2,0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME"),"HELP")//|
	//---------------------------------------------------------------------------------------------------------------------------|

	//DRAW QUIT TO DESKTOP---------------------------------------------------------------------------------------------------------------------------------------------------|
	if mouse_x >= QUITMIN_X and mouse_x <= QUITMAX_X and mouse_y >= QUITMIN_Y and mouse_y <= QUITMAX_Y//---------------------------------------------------------------------|
	{																								  //---------------------------------------------------------------------|
		draw_set_color(c_black)																		  //---------------------------------------------------------------------|
	}																								  //---------------------------------------------------------------------|
	else draw_set_color(c_white)																	  //---------------------------------------------------------------------|
	draw_text(room_width/2-string_width("QUIT TO DESKTOP")/2,0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")+string_height("HELP"),"QUIT TO DESKTOP")//|
	//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|
}
else
{
	draw_set_color(c_white)
	draw_set_font(ft_aestheticSMALL)
	draw_text(room_width/2-string_width("(Click or Press Enter)")/2,room_height/2+250,"(Click or Press Enter)")
	draw_set_font(ft_aesthetic)
	if mouse_x >= GOBACKMIN_X and mouse_x <= GOBACKMAX_X and mouse_y >= GOBACKMIN_Y and mouse_y <= GOBACKMAX_Y
	{
		draw_set_color(c_black)
	}
	else draw_set_color(c_white)
	draw_text(room_width/2-string_width("GO BACK")/2,room_height/2+200,"GO BACK")
	draw_set_color(c_white)
	
	
	
	
	if helpPromt == 1 and brickMenu == 0 and powerMenu == 0 and gamePlayMenu == 0 and moveMenu == 0
	{
		draw_text(room_width/2-string_width("HELP")/2,room_height/2-105,"HELP")
		if mouse_x >= BRICKMIN_X and mouse_x <= BRICKMAX_X and mouse_y >= BRICKMIN_Y and mouse_y <= BRICKMAX_Y//
		{																									 
			draw_set_color(c_black)																			 
		}																									  
		else draw_set_color(c_white)																		
		draw_text(room_width/2-string_width("BRICK HELP")/2,0+sprite_get_height(spr_titleText)*2.5+50,"BRICK HELP")
		/*
	//-----------------------------------------------------------------------------------------------------
		if mouse_x >= POWERMIN_X and mouse_x <= POWERMAX_X and mouse_y >= POWERMIN_Y and mouse_y <= POWERMAX_Y
		{																								
			draw_set_color(c_black)																		
		}																								
		else draw_set_color(c_white)																	
		draw_text(room_width/2-string_width("POWER UP HELP")/2,0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP"),"POWER UP HELP")
	//--------------------------------------------------------------------------------------------------------
		if mouse_x >= MOVEMIN_X and mouse_x <= MOVEMAX_X and mouse_y >= MOVEMIN_Y and mouse_y <= MOVEMAX_Y
		{																							
			draw_set_color(c_black)																		
		}																								  
		else draw_set_color(c_white)																	 
		draw_text(room_width/2-string_width("MOVEMENT HELP")/2,0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")+string_height("POWER UP HELP"),"MOVEMENT HELP")
		*/
	
		
		
		
		
		
		
		
	}
	//BRICK MENU--------------------------------------------------------------------------------------------------------
	if brickMenu == 1
	{
		draw_text(room_width/2-string_width("BRICK HELP")/2,room_height/2-105,"BRICK HELP")
		draw_set_font(ft_aestheticSMALL)
		draw_text_transformed(room_width/2-string_width("(Click a on Brick To View More Info)")/2,room_height/2-80,"(Click a on Brick To View More Info)",1,1,0)
		draw_set_font(ft_aesthetic)
		if brickHighLight == 0
		{
			if brickMenu == 1 and mouse_x >= BASICMIN_X and mouse_x <= BASICMAX_X and mouse_y >= BASICMIN_Y and mouse_y <= BASICMAX_Y
			{
				draw_set_color(c_black)
			}
			else draw_set_color(c_white)
			draw_text(room_width/2-50-string_width("NORMAL BRICK"),room_height/2-50,"NORMAL BRICK")
			
			if brickMenu == 1 and mouse_x >= DOUBLEMIN_X and mouse_x <= DOUBLEMAX_X and mouse_y >= DOUBLEMIN_Y and mouse_y <= DOUBLEMAX_Y
			{
				draw_set_color(c_black)
			}
			else draw_set_color(c_white)
			draw_text(room_width/2-50-string_width("DOUBLE HIT BRICK"),room_height/2,"DOUBLE HIT BRICK")
			
			if brickMenu == 1 and mouse_x >= INVUNMIN_X and mouse_x <= INVUNMAX_X and mouse_y >= INVUNMIN_Y and mouse_y <= INVUNMAX_Y
			{
				draw_set_color(c_black)
			}
			else draw_set_color(c_white)
			draw_text(room_width/2-50-string_width("INVUNRUBLE BRICK"),room_height/2+50,"INVUNRUBLE BRICK")
			
			if brickMenu == 1 and mouse_x >= HEALBRICKMIN_X and mouse_x <= HEALBRICKMAX_X and mouse_y >= HEALBRICKMIN_Y and mouse_y <= HEALBRICKMAX_Y
			{
				draw_set_color(c_black)
			}
			else draw_set_color(c_white)
			draw_text(room_width/2-50-string_width("EXTRA LIFE DROP BRICK"),room_height/2+100,"EXTRA LIFE DROP BRICK")
			
			if brickMenu == 1 and mouse_x >= ENERGYMIN_X and mouse_x <= ENERGYMAX_X and mouse_y >= ENERGYMIN_Y and mouse_y <= ENERGYMAX_Y
			{
				draw_set_color(c_black)
			}
			else draw_set_color(c_white)
			draw_text(room_width/2-50-string_width("BALL ENEGIZER DROP BRICK"),room_height/2+150,"BALL ENEGIZER DROP BRICK")
		}
		else if brickHighLight == 1 {draw_set_font(ft_aesthetic);draw_text(room_width/2-50-string_width("NORMAL BRICK"),room_height/2,"NORMAL BRICK");draw_set_font(ft_aestheticSMALL);draw_text(room_width/2-40-string_width("(When Hit will be Destroyed and Ball will Bounce off)"),room_height/2+50,"(When Hit will be Destroyed and Ball will Bounce off)")}
		else if brickHighLight == 2 {draw_set_font(ft_aesthetic);draw_text(room_width/2-50-string_width("DOUBLE HIT BRICK"),room_height/2,"DOUBLE HIT BRICK");draw_set_font(ft_aestheticSMALL);draw_text(room_width/2-string_width("(This brick requires you hit it two times to be destroyed)"),room_height/2+50,"(This brick requires you hit it two times to be destroyed)")}
		else if brickHighLight == 3 {draw_set_font(ft_aesthetic);draw_text(room_width/2-50-string_width("INVUNRUBLE BRICK"),room_height/2,"INVUNRUBLE BRICK");draw_set_font(ft_aestheticSMALL);draw_text(room_width/2-30-string_width("(You Can only destroy if ball avoids the shield)"),room_height/2+50,"(You Can only destroy if ball avoids the shield)")}
		else if brickHighLight == 4 {draw_set_font(ft_aesthetic);draw_text(room_width/2-50-string_width("EXTRA LIFE DROP BRICK"),room_height/2,"EXTRA LIFE DROP BRICK");draw_set_font(ft_aestheticSMALL);draw_text(room_width/2-40-string_width("(When Hit will drop a heath power up)"),room_height/2+50,"(When Hit will drop a heath power up)")}
		else if brickHighLight == 5 {draw_set_font(ft_aesthetic);draw_text(room_width/2-50-string_width("BALL ENEGIZER DROP BRICK"),room_height/2,"BALL ENEGIZER DROP BRICK");draw_set_font(ft_aestheticSMALL);draw_text(room_width/2-40-string_width("(When Hit will drop a Energy power up)"),room_height/2+50,"(When Hit will drop a Energy power up)")}
		
	}
	if powerMenu == 1
	{
		
	}
		
}
	
	
	
	
	
	
	
	
	
	
	