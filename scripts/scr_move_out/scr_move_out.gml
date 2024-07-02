///@function scr_move_out()
///@description Move away after collision
function scr_move_out() {

	//Direction away from collision
	dir = point_direction(other.x, other.y, x, y);

	//As long as were overlapping other
	while(place_meeting(x, y, other))
	{
		//Move away 1 pixel at a time
		x += lengthdir_x(1, dir);
		y += lengthdir_y(1, dir);
	}


}
