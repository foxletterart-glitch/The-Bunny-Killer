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
draw_set_alpha(1)
surface_reset_target();
draw_surface(surf,0,0)


