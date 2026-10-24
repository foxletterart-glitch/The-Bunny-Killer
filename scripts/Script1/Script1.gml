#macro sala_estar 0
#macro banheiro 1
#macro cozinha 2
#macro quarto 3
global.id_porta=-1
global.lista_porta=[]
global.debug=false
function verificacao_sala(_xx,_yy){
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
	//sala
	static _informacoes=noone
	//verificando
	if (_xx>_xx_s and _xx<_xx_s+_w_s) and (_yy>_yy_s and _yy<_yy_s+_h_s){
		_informacoes=[sala_estar,_xx_s,_xx_s+_w_s,_yy_s,_yy_s+_h_s]
	}
	if (_xx>_xx_c and _xx<_xx_c+_w_c) and (_yy>_yy_c and _yy<_yy_c+_h_c){
		_informacoes=[cozinha,_xx_c,_xx_c+_w_c,_yy_c,_yy_c+_h_c]
	}
	if (_xx>_xx_b and _xx<_xx_b+_w_b) and (_yy>_yy_b and _yy<_yy_b+_h_b){
		_informacoes=[banheiro,_xx_b,_xx_b+_w_b,_yy_b,_yy_b+_h_b]
	}
	if (_xx>_xx_q and _xx<_xx_q+_w_q) and (_yy>_yy_q and _yy<_yy_q+_h_q){
		_informacoes=[quarto,_xx_q,_xx_q+_w_q,_yy_q,_yy_q+_h_q]
	}
	return _informacoes;
}