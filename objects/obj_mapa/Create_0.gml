//setando o tamanho da grid
grid_tam=16
cel_w=(room_width div grid_tam)
cel_h=(room_height div grid_tam)
//criando o mapa da sala
grid=mp_grid_create(0,0,cel_w,cel_h,grid_tam,grid_tam)
//mapeando os obstaculos
mp_grid_add_instances(grid,obj_col,false)