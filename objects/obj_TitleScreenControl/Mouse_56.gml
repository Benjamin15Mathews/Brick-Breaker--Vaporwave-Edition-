//DRAW HELP------------------------------------------------------------------------------------------------------------------|
if mouse_x >= HELPMIN_X and mouse_x <= HELPMAX_X and mouse_y >= HELPMIN_Y and mouse_y <= HELPMAX_Y//-------------------------|
{																								  //-------------------------|
		helpPromt = 1																			  //-------------------------|
}
//DRAW START GAME--------------------------------------------------------------------------------------------|
if mouse_x >= STARTMIN_X and mouse_x <= STARTMAX_X and mouse_y >= STARTMIN_Y and mouse_y <= STARTMAX_Y and helpPromt != 1//-----|
{																									  //-----|
	room_goto(rm_GAME_LV1)																			  //-----|
}																									  //-----|
//-----------------------------------------------------------------------------------------------------------|



if helpPromt == 1 and ((keyboard_check_pressed(vk_enter)) or (mouse_x >= GOBACKMIN_X and mouse_x <= GOBACKMAX_X and mouse_y >= GOBACKMIN_Y and mouse_y <= GOBACKMAX_Y and mouse_check_button_pressed(mb_left)))
{
	if brickMenu == 1
	{
		if brickHighLight == 0
		{
			brickMenu = 0
			
			instance_destroy(obj_brick)
		}
		else {brickHighLight = 0 redraw = 1}
		
		
	}
	else if powerMenu == 1 powerMenu = 0
	else if moveMenu == 1 powerMenu = 0
	else if gamePlayMenu == 1 gamePlayMenu = 0
	else
	{
		helpPromt = 0
	}
}










if helpPromt == 1
{
	if mouse_x >= BRICKMIN_X and mouse_x <= BRICKMAX_X and mouse_y >= BRICKMIN_Y and mouse_y <= BRICKMAX_Y or redraw == 1//BRICK MENU
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
	/*
	if mouse_x >= POWERMIN_X and mouse_x <= POWERMAX_X and mouse_y >= POWERMIN_Y and mouse_y <= POWERMAX_Y
	{
		powerMenu = 1
	}
	*/
}

//INSIDE BRICK MENU
if brickHighLight == 0
{
	if brickMenu == 1 and mouse_x >= BASICMIN_X and mouse_x <= BASICMAX_X and mouse_y >= BASICMIN_Y and mouse_y <= BASICMAX_Y
	{
		brickHighLight = 1
		if instance_exists(obj_brick) instance_destroy(obj_brick)
		brick = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
		with brick sprite_index = spr_brick_basic
	}
	if brickMenu == 1 and mouse_x >= DOUBLEMIN_X and mouse_x <= DOUBLEMAX_X and mouse_y >= DOUBLEMIN_Y and mouse_y <= DOUBLEMAX_Y
	{
		brickHighLight = 2
		if instance_exists(obj_brick) instance_destroy(obj_brick)
		brick = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
		with brick sprite_index = spr_brick_double
	}
	if brickMenu == 1 and mouse_x >= INVUNMIN_X and mouse_x <= INVUNMAX_X and mouse_y >= INVUNMIN_Y and mouse_y <= INVUNMAX_Y
	{
		brickHighLight = 3
		if instance_exists(obj_brick) instance_destroy(obj_brick)
		brick = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
		with brick sprite_index = spr_brick_invunruble
	}
	if brickMenu == 1 and mouse_x >= HEALBRICKMIN_X and mouse_x <= HEALBRICKMAX_X and mouse_y >= HEALBRICKMIN_Y and mouse_y <= HEALBRICKMAX_Y
	{
		brickHighLight = 4
		if instance_exists(obj_brick) instance_destroy(obj_brick)
		brick = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
		with brick sprite_index = spr_brick_extraLife
	}
	if brickMenu == 1 and mouse_x >= ENERGYMIN_X and mouse_x <= ENERGYMAX_X and mouse_y >= ENERGYMIN_Y and mouse_y <= ENERGYMAX_Y
	{
		brickHighLight = 5
		if instance_exists(obj_brick) instance_destroy(obj_brick)
		brick = instance_create_layer(room_width/2+50,room_height/2,"Bricks",obj_brick)
		with brick sprite_index = spr_brick_SPEEDBOOST
	}
}

//DRAW QUIT TO DESKTOP---------------------------------------------------------------------------------------------------------------------------------------------------|
if mouse_x >= QUITMIN_X and mouse_x <= QUITMAX_X and mouse_y >= QUITMIN_Y and mouse_y <= QUITMAX_Y and helpPromt != 1//---------------------------------------------------------------------|
{																								  //---------------------------------------------------------------------|
	game_end()																					  //---------------------------------------------------------------------|
}																								  //---------------------------------------------------------------------|
//-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|