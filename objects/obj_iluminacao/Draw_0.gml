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
	var _l_id=layer_get_id("Assets_1")
	var _sala=layer_sprite_get_id(_l_id,"graphic_5C4EB04")
	var _cozinha=layer_sprite_get_id(_l_id,"graphic_69221625")
	var _banheiro=layer_sprite_get_id(_l_id,"graphic_381C8283")
	var _quarto=layer_sprite_get_id(_l_id,"graphic_243FF23")
	//eixo x
	var _xx_s=layer_sprite_get_x(_sala)
	var _xx_c=layer_sprite_get_x(_cozinha)
	var _xx_b=layer_sprite_get_x(_banheiro)
	var _xx_q=layer_sprite_get_x(_quarto)
	//eixo y
	var _yy_s=layer_sprite_get_y(_sala)
	var _yy_c=layer_sprite_get_y(_cozinha)
	var _yy_b=layer_sprite_get_y(_banheiro)
	var _yy_q=layer_sprite_get_y(_quarto)
	//pegando a sprite
	var _spr_s=layer_sprite_get_sprite(_sala)
	var _spr_c=layer_sprite_get_sprite(_cozinha)
	var _spr_b=layer_sprite_get_sprite(_banheiro)
	var _spr_q=layer_sprite_get_sprite(_quarto)
	//largura
	var _w_s=sprite_get_width(_spr_s)
	var _w_c=sprite_get_width(_spr_c)
	var _w_b=sprite_get_width(_spr_b)
	var _w_q=sprite_get_width(_spr_q)
	//altura
	var _h_s=sprite_get_height(_spr_s)
	var _h_c=sprite_get_height(_spr_c)
	var _h_b=sprite_get_height(_spr_b)
	var _h_q=sprite_get_height(_spr_q)
	//margem
	var _marg=16
	if informacoes[0]!=sala_estar{
		draw_rectangle(_xx_s-_marg,_yy_s-_marg*1.7,(_xx_s+_w_s)+_marg,_yy_s+_h_s,false)
	}
	if informacoes[0]!=cozinha{
		draw_rectangle(_xx_c-_marg,_yy_c-_marg*1.7,(_xx_c+_w_c)+_marg,_yy_c+_h_c,false)
	}
	if informacoes[0]!=banheiro{
		draw_rectangle(_xx_b-_marg,_yy_b-_marg*1.7,(_xx_b+_w_b)+_marg,_yy_b+_h_b,false)
	}
	if informacoes[0]!=quarto{
		draw_rectangle(_xx_q-_marg,_yy_q-_marg*1.7,(_xx_q+_w_q)+_marg,_yy_q+_h_q,false)
	}
}
gpu_set_blendmode(bm_normal)
draw_set_color(c_white)
draw_set_alpha(1)
surface_reset_target();
draw_surface(surf,0,0)



