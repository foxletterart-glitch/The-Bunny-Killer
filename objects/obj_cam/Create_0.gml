/// @description Insert description here
// You can write your code in this editor
x=camera_get_view_x(view_camera[global.cam])
y=camera_get_view_y(view_camera[global.cam])
//view_camera[global.cam]
w_cam=640/2
h_cam=360/2
mov_cam=function(){
	x=lerp(x,obj_player.x,.1)
	y=lerp(y,obj_player.y,.1)
	x=clamp(x,0,room_width)
	y=clamp(y,0,room_height)
	camera_set_view_size(view_camera[global.cam],w_cam,h_cam)
	camera_set_view_pos(view_camera[global.cam],x-w_cam/2,y-h_cam/2)
}

