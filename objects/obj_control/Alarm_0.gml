///@description New Ball
if room == rm_GAME_LV1
{
	launched = false;
	ballX = obj_paddle.x;
	ballY = obj_paddle.y - obj_paddle.sprite_height/2 - ball_height/2
	if lives > 0
	{
		instance_create_depth(ballX,ballY,0,obj_ball)
	}
}