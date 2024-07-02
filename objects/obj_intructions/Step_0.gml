enter = keyboard_check_pressed(vk_enter)

go += enter

if alpha <= 1 and go <= 0
{
	alpha += .05
}

if go >= 1
{
	alpha -=.01
	if alpha == 0 room_goto_next()
}