/// @description init
randomize() //see random
launched = false; //has the ball been alunced
audio_play_sound(choose(mus_bg1,mus_bg2,mus_bg3,mus_bg4),0,false)
draw_set_font(ft_aesthetic)
draw_set_color(c_white)
alpha_win = 0;
alpha_continue = 0;
lives = 3
ms = 0
score = 0
ball_height = 0
death = 0
win_text = "Y O U  W I N";
loose_text = "Y O U  L O S E";
continue_text = "press  e n t e r  to continue"
continue_go = 0
go = 0;
lock = 0
global.SpeedPower = 0
global.SpeedPowerACTIVE = 0

alpha_lives[0] = 0
alpha_lives[1] = 1
alpha_lives[2] = 1
alpha_lives[3] = 1
alpha_lives[4] = 1
alpha_lives[5] = 1
alpha_lives[6] = 1
alpha_lives[7] = 1

level = 1


//Shadders
global.pc_sys = part_system_create()
global.pc_emit[0] = part_emitter_create(global.pc_sys)
part_system_depth(global.pc_sys,-1)