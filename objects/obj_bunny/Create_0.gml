//variaveis de movimento
caminho=path_add()
_x_caminho=0
_y_caminho=0
vel=.4
velh=0
velv=0
informacoes=[0,0,0,0,0]
time_andante=0
time_int=room_speed*5
dado_20=0
indo=false
inicial_x=x
inicial_y=y
sala_atual=noone
//criando a maquina de estados 
estado="andando"
colisao=function(){
	if place_meeting(x+sign(velh),y,obj_col){
		velh=0	
	}else{
		x+=velh	
	}
	if place_meeting(x,y+sign(velv),obj_col){
		velv=0	
	}else{
		y+=velv	
	}
}
maquina_estados=function(){
	randomise()
	switch(estado){
		case "andando":
		static indo=false
		if time_andante<=0{
			sala_atual=informacoes[0]
			dado_20=irandom(20)
			if dado_20<15{
				_x_caminho=irandom_range(informacoes[1],informacoes[2])	
				_y_caminho=irandom_range(informacoes[3],informacoes[4])
			}
			
				for(var i=0; i<instance_number(obj_porta); i++;){
						if dado_20>14 and dado_20!=20{
						//verificando todas as portas
						if global.lista_porta[i].sala_porta!=informacoes[0] and 
						global.lista_porta[i].sala_porta!=obj_player.sala_now{
							var _decisao=choose("vou","n_vou")
							switch(_decisao){
								case "vou":
									_x_caminho=global.lista_porta[i].x+8
									_y_caminho=global.lista_porta[i].y+8
								break;
								case "n_vou":
									dado_20=irandom(20)
								break;
							}	
						}
					}
					if dado_20==20{
						if global.lista_porta[i].sala_porta==obj_player.sala_now{
							_x_caminho=global.lista_porta[i].x+8
							_y_caminho=global.lista_porta[i].y+8	
						}
					}
					
					
				}
			//reiniciando timer
			time_andante=time_int
		}else{
			if sala_atual==informacoes[0]{
				mp_grid_path(obj_mapa.grid,caminho,x,y,_x_caminho,_y_caminho,false)
				path_start(caminho,vel,path_action_stop,false)
			}else{
				path_end()
				path_clear_points(caminho)
				time_andante=0
			}
			//rodando timer
			time_andante--;
		}
		break;
	}
}

