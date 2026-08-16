//criando camera
if !instance_exists(obj_cam){
	instance_create_layer(x,y,layer,obj_cam)
}
if !instance_exists(obj_iluminacao){
	instance_create_layer(x,y,layer,obj_iluminacao)
}
//iniciando variaveis
//movimentação
//velocidade
vel=1
//velocidade vertical e horizontal
velh=0
velv=0

//variaveis de desenho
sprite=sprite_index
image=image_index
vel_img=10
xsc=1
ysc=1
ang=0
animacao=function(){
	var _numb=sprite_get_number(sprite)
	image+=(image_speed/60)*vel_img
	if image==_numb{
		image=0	
	}
}
controles=function(){
	w=keyboard_check(ord("W"))	
	s=keyboard_check(ord("S"))	
	d=keyboard_check(ord("D"))	
	a=keyboard_check(ord("A"))	
}
movimentacao=function(){
	controles()
	if (w xor s or d xor a) and (velh!=0 or velv!=0){
		animacao()
	}else{
		image=0	
	}
	if a or d{
		if velh!=0{
			xsc=sign(velh)
		}
		sprite=spr_player_lado	
	}
	if w{
		sprite=spr_player_costas	
	}
	if s{
		sprite=spr_player_frente	
	}
	velv=(s-w)*vel	
	velh=(d-a)*vel	
}
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

	   

