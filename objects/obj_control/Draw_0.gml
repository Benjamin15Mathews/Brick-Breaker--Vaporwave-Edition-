draw_sprite_part(spr_background,0,0,0,800,30,0,0)


switch room
{
	case rm_WIN:
		draw_set_alpha(alpha_win)
		if lives > 0 draw_text(room_width/2 - string_width(win_text)/2,200,win_text)
		if lives <= 0 draw_text(room_width/2 - string_width(loose_text)/2,200,loose_text)
		
		draw_set_alpha(alpha_continue)
		draw_text(room_width/2 - string_width(continue_text)/2,450,continue_text)
		break;
}
