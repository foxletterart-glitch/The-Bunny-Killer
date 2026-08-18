if point_distance(x,y,obj_player.x,obj_player.y)<25{
		if keyboard_check_released(ord("E")){
			if duto{
				with(obj_cam){
					x=317	
					y=316	
				}
				obj_player.x=317
				obj_player.y=316
				obj_player.sala_now=banheiro
			}
	}
}