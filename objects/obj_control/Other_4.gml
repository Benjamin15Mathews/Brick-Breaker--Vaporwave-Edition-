if room == rm_GAME_LV1
{
	 //If You Restarted the Game it wipes the score
	
	launched = false;//Ticks the Ball To the Paddle
	brickWidth = 63;//Width of the bricks
	brickHeight = 38;//Height of the bricks
	leftOffset = 22;//Space from wall
	topOffset = 70;//space from ceiling
	
	bricksperRow = 12//How many Bricks can i have max in a row
	bricksrows = 6//How many Brikcs can I have Max in a Colum
		
	var bx = 0;//x value to place bricks x
	var by = 0;//y value to place bricks y
	
//-------------------------------------------------------------------------------------------------------------
//----------------Set Level Layout-----------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
	level1 = [[0,1,2,1,1,1,1,1,1,2,1,5],//Level 1 layout
			  [2,2,4,2,1,1,1,1,2,4,2,2],
			  [2,1,3,1,1,3,3,1,1,3,1,2],      
			  [3,1,0,1,2,2,2,2,1,0,1,3],
			  [0,0,0,0,1,5,1,0,0,0,0,0],							//BrickTypes
			  [0,0,0,0,0,0,0,0,0,0,0,0]]						   //-------------------------
																  //0. NO BRICK
	level2 = [[1,1,1,0,0,0,0,0,0,0,2,0],//Level 2 Layout		 //1. BASIC BRICK
			  [0,1,1,1,2,1,2,0,1,4,0,0],					    //2. DOUBLE HIT BRICK
			  [0,5,1,1,1,2,5,1,4,3,3,0],					   //3. INVUNRUBLE BRICK
			  [0,0,1,1,1,1,0,0,0,2,0,0],					  //4. ExtraLife Brick
			  [0,1,1,1,1,1,0,0,0,0,0,0],					 //5. SPEEDBOOST BRICK
			  [2,2,2,2,2,2,2,1,1,1,1,1]]
			  
	level3 = [[5,3,4,1,1,1,1,1,3,3,3,5],//Level 3 Layout
			  [1,2,1,1,1,1,1,2,2,2,4,3],
			  [1,1,4,1,1,3,1,2,2,2,2,2],
			  [2,3,3,3,3,3,3,3,3,2,2,3],
			  [0,0,0,3,0,3,0,0,0,3,0,0],
			  [0,0,0,0,0,0,0,0,0,0,0,0]]
	
	
//-------------------------------------------------------------------------------------------------------------
//------------------Build The Bricks---------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------
	for(r = 0; r < bricksrows;r++)//Loops For the amount of rows
	{
		switch level//Checks the Level
		{
			case 1: row = level1[r] show_debug_message("Row Choosen")break;//Set the Layout to Level 1 and set to r row of the array
			case 2: row = level2[r] break;//Set the Layout to Level 2 and set to r row of the array
			case 3: row = level3[r] break;//Set the Layout to Level 3 and set to r row of the array
		}
		for(c = 0; c < bricksperRow; c++)//Loops for the MAx amount of Bricks in a Row
		{show_debug_message("Draw Bricks")
			switch row[c]//Check Differnet Brick Types
			{
				case 1: var BasicBrick = instance_create_layer(bx+leftOffset,topOffset+by,"Blocks",obj_brick)//Create Instance of Brick
						with BasicBrick {sprite_index = spr_brick_basic}//Sets Sprite To spr_brick_basic
						break;//Creates a Basic Brick
				case 2: var DOUBLEBrick = instance_create_layer(bx+leftOffset,topOffset+by,"Blocks",obj_brick)//Create Instance of Brick
						with DOUBLEBrick {sprite_index = spr_brick_double;}//Sets Sprite To spr_brick_Double
						break;//Creates a Double Hit Brick
				case 3: var INVUNBrick = instance_create_layer(bx+leftOffset,topOffset+by,"Blocks",obj_brick)//Create Instance of Brick
						with INVUNBrick {sprite_index = spr_brick_invunruble}//Sets Sprite To spr_brick_invunruble
						break;//Creates a Invunruble Brick
				case 4: var EXTRABrick = instance_create_layer(bx+leftOffset,topOffset+by,"Blocks",obj_brick)//Create Instance of Brick
						with EXTRABrick {sprite_index = spr_brick_extraLife}//Sets Sprite To spr_brick_ExtraLife
						break;//Creates a Extra Life Brick
				case 5: var SPEEDBrick = instance_create_layer(bx+leftOffset,topOffset+by,"Blocks",obj_brick)//Create Instance of Brick
						with SPEEDBrick {sprite_index = spr_brick_SPEEDBOOST}//Sets Sprite To spr_brick_SPEEDBOOST
						break;//Creates a SPEEDBOOST Brick
			}
			bx += brickWidth//Moves the Brick Placement X to acomadate for the brickplaced width
		}
		bx = 0//Resets Bricks Placement X
		by += brickHeight//At the end of Placing Rows it Increments the Bricks placement y by the bricks height
	}
	
}