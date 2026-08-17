if point_distance(x,y,obj_player.x,obj_player.y)<25{
	show_message("press E to interact")	
	if keyboard_check_released(ord("E")){
		show_message("presionado")
	}
}