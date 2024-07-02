loop = 0
alpha = 1
drawLock = 0
go = 0
blockReflect = 1
brickDrawWidth = 63
brickDrawHeight = 38//38
timer = 1
distanceFromBrick = 0

//SHADERS
num = 1
pc_part[num] = part_type_create();

part_type_sprite     (pc_part[num], spr_square_16, false, false, false);
part_type_life       (pc_part[num], 43, 43);
part_type_direction  (pc_part[num], 0, 360, -0.53, 0.20);
part_type_orientation(pc_part[num], 90, 90, 1, 0, 0);
part_type_speed      (pc_part[num], 0.50, 0.64, -0.06, -0.75);
part_type_size       (pc_part[num], 0.09, 0.20, 0.01, 0.11);
part_type_alpha3     (pc_part[num], 0.90, 1, 0);
part_type_colour3    (pc_part[num], make_colour_rgb(215, 123, 186), make_colour_rgb(118, 66, 138), make_colour_rgb(99, 155, 255));
part_type_blend      (pc_part[num], 0);
part_type_gravity    (pc_part[num], 0, 270);


// The part_emitter_region is commented out as it is used when needed, and does not need to be initialised here!


// part_emitter_region  (pc_sys, pc_emit[0], x-63, x+63, y-38, y+38, ps_shape_rectangle, ps_distr_invgaussian);