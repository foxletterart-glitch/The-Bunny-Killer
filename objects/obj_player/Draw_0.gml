/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite,image,x,y,xsc,ysc,ang,c_white,1)
if instance_exists(obj_interact){
	if point_distance(x,y,obj_interact.x,obj_interact.y)<25{
		draw_text_transformed(obj_interact.x,obj_interact.y-8,"Press E to interact",.3,.3,0)	
	}
}


