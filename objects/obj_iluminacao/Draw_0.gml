/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(surf))
{
    surf = surface_create(wid, hei);
    surface_set_target(surf);
    draw_clear_alpha(c_black, 0);
    surface_reset_target();
}
surface_set_target(surf);
draw_set_color(c_black)
draw_set_alpha(.6)
draw_rectangle(0,0,wid,hei,false)
draw_set_color(c_white)
gpu_set_blendmode(bm_subtract)
if instance_exists(obj_player){
	draw_set_alpha(.2)
	draw_circle(obj_player.x,obj_player.y-8,16+random(.8),false)
	draw_set_alpha(.6)
	draw_circle(obj_player.x,obj_player.y-8,8+random(.8),false)
}
gpu_set_blendmode(bm_normal)
//transicao
var _cor=make_colour_rgb(14,12,12)
draw_set_color(_cor)
draw_set_alpha(.99)
//sala_estar
if instance_exists(obj_player){
	if obj_player.sala_now!=sala_estar{
		draw_rectangle(392,210,618,337,false)
	}
	if obj_player.sala_now!=banheiro{
		draw_rectangle(290,242,372,322,false)	
	}
	if obj_player.sala_now!=cozinha{
		draw_rectangle(328,364,473,483,false)	
	}
	if obj_player.sala_now!=quarto{
		draw_rectangle(493,340,624,483,false)	
	}
}
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)
draw_set_alpha(1)
surface_reset_target();
draw_surface(surf,0,0)



