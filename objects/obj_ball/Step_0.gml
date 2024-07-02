/// @description behavior
//SHADERS
if global.SpeedPowerACTIVE == 1
{
	pc_part[num] = part_type_create();
	part_type_sprite     (pc_part[num], spr_disc_32, false, false, false);
	part_type_life       (pc_part[num], 25, 45);
	part_type_direction  (pc_part[num], 0, 360, -0.12, -0.64);
	part_type_orientation(pc_part[num], 90, 90, -1, 1, 0);
	part_type_speed      (pc_part[num], 0.36, 1.41, -0.04, 0.82);
	part_type_size       (pc_part[num], 0.11, 0.91, -0.04, 0.01);
	part_type_alpha3     (pc_part[num], 0.90, 1, 0);
	part_type_colour3    (pc_part[num], make_colour_rgb(172, 50, 50), make_colour_rgb(251, 242, 54), make_colour_rgb(251, 242, 54));
	part_type_blend      (pc_part[num], 0);
	part_type_gravity    (pc_part[num], 0, 270);
}
else
{
	part_type_sprite     (pc_part[num], spr_spark_32, false, false, false);
	part_type_life       (pc_part[num], 18, 42);
	part_type_direction  (pc_part[num], 0, 360, -0.61, -0.55);
	part_type_orientation(pc_part[num], 90, 90, 0, 0, 0);
	part_type_speed      (pc_part[num], 0.91, 1.32, 0.04, -0.94);
	part_type_size       (pc_part[num], 0.62, 1.12, -0.00, 0.03);
	part_type_alpha3     (pc_part[num], 0.90, 1, 0);
	part_type_colour3    (pc_part[num], make_colour_rgb(95, 205, 228), make_colour_rgb(215, 123, 186), make_colour_rgb(99, 155, 255));
	part_type_blend      (pc_part[num], 0);
	part_type_gravity    (pc_part[num], 0, 270);
}


//Fade in
if alpha <= 1 and instance_exists(obj_ball) and instance_exists(obj_brick)
{
	alpha += .05
}

//Fade Out
if alpha >=0 and !instance_exists(obj_brick)
{
	alpha -=.05
}

if lives <= 0
{
	if alpha >=0
	{
		death = 1
		alpha -=.05
	}
}

if global.SpeedPowerACTIVE == 1
{
	speed = 10
}
else speed = 5




//follow the paddle
if(!obj_control.launched)
{
	x = obj_paddle.x;
	y = (obj_paddle.y - obj_paddle.sprite_height/2) - obj_ball.sprite_height/2
}
else
{
	part_emitter_region(global.pc_sys,global.pc_emit[0],x,x,y,y,ps_shape_ellipse,ps_distr_gaussian)
	part_emitter_burst(global.pc_sys,global.pc_emit[0],pc_part[num],8)
}

//Celing
if(y < 30 + (sprite_height/2))
{
	if (direction >= 88 and direction <= 92) direction = 85
	y = 30+(sprite_height/2);
	vspeed = -vspeed;
}


//Right Wall
if(x > room_width - sprite_width/2)
{
	if (direction >= 88 and direction <= 92) direction = 85
	x = room_width - sprite_width/2
	hspeed = -hspeed
	audio_play_sound(sd_ballwall,0,0)
}

//Left Wall
if(x < sprite_width/2)
{
	if (direction >= 88 and direction <= 92) direction = 85
	x = sprite_width/2
	hspeed = -hspeed
	audio_play_sound(sd_ballwall,0,0)
}

//deal with ball exit through floor
if(y > room_height + sprite_height / 2)
{
	obj_control.alarm[0] = 120; //2s
	audio_play_sound(sd_balloff,0,0)
	lives -= 1
	instance_destroy()
}

