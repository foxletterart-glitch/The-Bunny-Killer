//variaveis de movimento
vel=.4
velh=0
velv=0

time_direction=0
time_int=room_speed*3
dir_y="nada"
dir_x="nada"
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
			if time_direction>0{
				time_direction--;	
			}else{
				dir_x=choose("nada","direita","esquerda")	
				dir_y=choose("baixo","cima","nada")	
				time_direction=time_int
			}
			switch(dir_y){
				case "baixo":
					velv=vel
				break;
				case "cima":
					velv=-vel
				break;
				case "nada":
					velv=0
				break;
			}
			switch(dir_x){
				case "direita":
					velh=vel
				break;
				case "esquerda":
					velh=-vel
				break;
				case "nada":
					velh=0
				break;
			}
		break;
	}
}
