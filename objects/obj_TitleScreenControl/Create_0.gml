draw_set_color(c_white)
draw_set_font(ft_aesthetic)
//MAIN TITLE
STARTMIN_X = room_width/2-string_width("START GAME")/2
STARTMAX_X = room_width/2+string_width("START GAME")/2
STARTMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50
STARTMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")

HELPMIN_X = room_width/2-string_width("HELP")/2
HELPMAX_X = room_width/2+string_width("HELP")/2
HELPMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")
HELPMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")+string_height("HELP")

QUITMIN_X = room_width/2-string_width("QUIT TO DESKTOP")/2
QUITMAX_X = room_width/2+string_width("QUIT TO DESKTOP")/2
QUITMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")+string_height("HELP")
QUITMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("START GAME")+string_height("HELP")+string_height("QUIT TO DESKTOP")
//HELP MENUS----------------------------------------------
BRICKMIN_X = room_width/2-string_width("BRICK HELP")/2
BRICKMAX_X = room_width/2+string_width("BRICK HELP")/2
BRICKMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50
BRICKMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")

POWERMIN_X = room_width/2-string_width("POWER UP HELP")/2
POWERMAX_X = room_width/2+string_width("POWER UP HELP")/2
POWERMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")
POWERMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")+string_height("POWER UP HELP")

MOVEMIN_X = room_width/2-string_width("MOVEMENT HELP")/2
MOVEMAX_X = room_width/2+string_width("MOVEMENT HELP")/2
MOVEMIN_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")+string_height("POWER UP HELP")
MOVEMAX_Y = 0+sprite_get_height(spr_titleText)*2.5+50+string_height("BRICK HELP")+string_height("POWER UP HELP")+string_height("MOVEMENT HELP")

GOBACKMIN_X = room_width/2-string_width("GO BACK")/2
GOBACKMAX_X = room_width/2+string_width("GO BACK")/2
GOBACKMIN_Y = room_height/2+200
GOBACKMAX_Y = room_height/2+200+string_height("GO BACK")

//BRICK MENU-------------------------------------------------------------
BASICMIN_X = room_width/2-50-string_width("NORMAL BRICK")
BASICMAX_X = room_width/2-50
BASICMIN_Y = room_height/2-50
BASICMAX_Y = room_height/2-50+string_height("NORMAL BRICK")

DOUBLEMIN_X = room_width/2-50-string_width("DOUBLE HIT BRICK")
DOUBLEMAX_X = room_width/2-50
DOUBLEMIN_Y = room_height/2
DOUBLEMAX_Y = room_height/2+string_height("DOUBLE HIT BRICK")

INVUNMIN_X = room_width/2-string_width("INVUNRUBLE BRICK")
INVUNMAX_X = room_width/2-50
INVUNMIN_Y = room_height/2+50
INVUNMAX_Y = room_height/2+50+string_height("INVUNRUBLE BRICK")

HEALBRICKMIN_X = room_width/2-string_width("EXTRA LIFE DROP BRICK")
HEALBRICKMAX_X = room_width/2-50
HEALBRICKMIN_Y = room_height/2+100
HEALBRICKMAX_Y = room_height/2+100+string_height("EXTRA LIFE DROP BRICK")

ENERGYMIN_X = room_width/2-string_width("BALL ENEGIZER DROP BRICK")
ENERGYMAX_X = room_width/2-50
ENERGYMIN_Y = room_height/2+150
ENERGYMAX_Y = room_height/2+150+string_height("BALL ENEGIZER DROP BRICK")
//PowerUp menu



//OTHER VARS
helpPromt = 0
brickMenu = 0
brickHighLight = 0
powerMenu = 0
moveMenu = 0
gamePlayMenu = 0
redraw = 0