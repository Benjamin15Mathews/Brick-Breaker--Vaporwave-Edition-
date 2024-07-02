draw_set_alpha(alpha)//Makes Brick Completely INVisible
image_alpha = 0
draw_self()//Draws Self
if room == rm_TITLE
{
	draw_sprite_part(spr_effect_menu,loop,x,y,63,38,x,y) //DRAWS Effect
			if(loop <= 16 and loop >=0) //Loops Through Frames
			{
				if drawLock == 0//Sets a Delay For Frames
				{
					loop +=1
					drawLock = 1
					alarm[0] = 3
				}
			}
			else loop = 0
}
//-------------------------------------------------------------------------------------------------------------
//------------------DRAWS THE EFFEXS---------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
switch obj_control.level//Checks Level
{
	
	case 1: draw_sprite_part(spr_effect,loop,x,y,63,38,x,y) //DRAWS Effect
			if(loop <= 16 and loop >=0) //Loops Through Frames
			{
				if drawLock == 0//Sets a Delay For Frames
				{
					loop +=1
					drawLock = 1
					alarm[0] = 3
				}
			}
			else loop = 0
			break;
	case 2: draw_sprite_part(spr_effect2,loop,x,y,63,38,x,y)//DRAWS Effect
			if(loop <= 26 and loop >=0)//Loops Through Frames
			{
				if drawLock == 0//Sets a Delay For Frames
				{
					loop +=1
					drawLock = 1
					alarm[0] = 3
				}
			}
			else loop = 0
			break;
	case 3: draw_sprite_part(spr_effect_3,loop,x,y,63,38,x,y)//DRAWS Effect
			if(loop <= 86 and loop >=0) //Loops Through Frames
			{
				if drawLock == 0//Sets a Delay For Frames
				{
					loop +=1
					drawLock = 1
					alarm[0] = 3
				}
			}
			else loop = 0
			break;
}

//-------------------------------------------------------------------------------------------------------------
//------------------BRICK PROPERTIES---------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
if sprite_index == spr_brick_invunruble
{
	//show_debug_message(brickDrawHeight)
	draw_set_alpha(.1)//.3
	if blockReflect == 1 draw_sprite_part_ext(spr_brick_reflect,0,x,y,63,brickDrawHeight,x,y+38,1,-1,c_white,.4)
	if blockReflect == 3 draw_sprite_part_ext(spr_brick_reflect,0,x,y,63,brickDrawHeight,x,y,1,1,c_white,.4)
	if blockReflect == 1
	{
		brickDrawHeight += 1
		//brickDrawWidth -= 1
		if brickDrawHeight >=38
		{
			blockReflect = 3
			brickDrawHeight = 38
		}
	
		
	}
	if blockReflect == 3
	{
		brickDrawHeight -= 1
		//brickDrawWidth -= 1
		if brickDrawHeight <=0
		{
			blockReflect = 2
			alarm[1] = 60
			brickDrawHeight = 0
		}
	}
	
}

if sprite_index == spr_brick_double
{
	draw_set_alpha(.4)
	draw_sprite_part(spr_brick_reflect,0,x,y,63,brickDrawHeight,x,y)
	if blockReflect == 0
	{
		alpha = .4
		
		
		brickDrawHeight -= 1
		//brickDrawWidth -= 1
		if brickDrawHeight <=0
		{
			blockReflect = 2
		}
	}
	alpha = 1
}

if sprite_index == spr_brick_extraLife
{
	draw_sprite_ext(spr_newlife,0,x+63/2,y+38/2,1,1,0,c_white,.5)
}

if sprite_index == spr_brick_SPEEDBOOST
{
	draw_sprite_ext(spr_SPEEDBOOST,0,x+63/2,y+38/2,1,1,0,c_white,.8)
}



if sprite_index == spr_brick_basic
{
	alpha = 1
}