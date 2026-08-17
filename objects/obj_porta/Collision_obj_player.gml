/// @description Insert description here
// You can write your code in this editor
var _x=destino_x
var _y=destino_y
with(obj_cam){
	x=_x	
	y=_y	
}
global.cam=camera
for(var i=0; i<3; i++){
	if view_get_visible(i) and i!=global.cam{
		view_set_visible(i,false)	
	}
}
view_set_visible(global.cam,true)
with(other){
	x=_x	
	y=_y
}

