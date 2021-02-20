/// @description Insert description here
// You can write your code in this editor

if p_mes = -1 && player.entering_daepiso = 0
{
	if point_distance(x,366,player.x,player.y) <= 32 && global.in_building <= 0.16
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "나가기 (D)"
	p_mes.target = player
	}
}


if point_distance(x,366,player.x,player.y) > 32 || global.playing_scene = 1
{
p_mes = -1
}


if anime > 0
{
anime++

	if anime > 50
	{
	global.t_in_building = 1.1
	}

	if anime > 250
	{
	player.x = player.xstart
	player.y = player.ystart
	global.p_floor = 903
	global.n_room = 0
	
	obj_BG.image_index = 0
	
	obj_camera.tv_x = 1280
	obj_camera.tv_y = 720
	obj_camera.t_x = -4
	obj_camera.t_y = -4
	anime = -100
	}
	else
	{
	player.vspeed = 0
	player.gravity = 0
		if player.image_alpha > 0
		{
		player.image_alpha -= 0.01
		global.p_floor -= 0.5
		player.y -= 0.5
		}
	player.x += (x - player.x)*0.05
	player.image_index += 0.3
	player.cannot_move = 1
	player.sprite_index = pl_move_skeleton
	player.gravity_ignore = 1
	player.entering_daepiso = 1
	}
}



if anime < 0
{
anime++
	if player.image_alpha < 1
	{
	player.image_alpha += 0.1
	}
	
	if anime > -2
	{
	anime = 0
	player.cannot_move = 0
	player.sprite_index = pl_move_skeleton
	player.gravity_ignore = 0
	player.entering_daepiso = 0
	global.t_in_building = -0.01
	global.wave_start = 1
	global.ready_for_the_next_wave = 0
	}
}