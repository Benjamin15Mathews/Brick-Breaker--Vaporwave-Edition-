if helpPromt == 1 and ((keyboard_check_pressed(vk_enter)) or (mouse_x >= GOBACKMIN_X and mouse_x <= GOBACKMAX_X and mouse_y >= GOBACKMIN_Y and mouse_y <= GOBACKMAX_Y and mouse_check_button_pressed(mb_left)))
{
	
	
	if brickMenu == 1
	{
		if brickHighLight == 0
		{
			brickMenu = 0
			
			instance_destroy(obj_brick)
		}
		else {brickHighLight = 0;redraw = 1;}
		
		
	}
	else if powerMenu == 1 powerMenu = 0
	else if moveMenu == 1 powerMenu = 0
	else if gamePlayMenu == 1 gamePlayMenu = 0
	else
	{
		helpPromt = 0
	}
	if redraw == 1//BRICK MENU
	{
		brickMenu = 1
			instance_destroy(obj_brick)
			basic = instance_create_layer(room_width/2+50,room_height/2-50,"Bricks",obj_brick)
			with basic {sprite_index = spr_brick_basic}
		
			double = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
			with double {sprite_index = spr_brick_double}
		
			inv = instance_create_layer(room_width/2+50,room_height/2+50,"Bricks",obj_brick)
			with inv {sprite_index = spr_brick_invunruble}
		
			heal = instance_create_layer(room_width/2+50,room_height/2+100,"Bricks",obj_brick)
			with heal {sprite_index = spr_brick_extraLife}
		
			energy = instance_create_layer(room_width/2+50,room_height/2+150,"Bricks",obj_brick)
			with energy {sprite_index = spr_brick_SPEEDBOOST}
			redraw = 0
	}
}