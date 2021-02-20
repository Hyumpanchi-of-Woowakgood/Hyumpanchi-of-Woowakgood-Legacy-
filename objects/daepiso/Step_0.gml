/// @description Insert description here
// You can write your code in this editor

door_y += (t_door_y - door_y)*0.1

if p_mes = -1 && player.entering_daepiso = 0
{
	if point_distance(x,903,player.x,player.y) <= 32 && t_door_y = -64
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "들어가기 (D)"
	p_mes.target = player
	}
}

if point_distance(x,903,player.x,player.y) > 32 || global.playing_scene = 1
{
p_mes = -1
}



if global.ready_for_the_next_wave = 1
{
	if point_distance(x,903,player.x,player.y) <= 32
	{
	t_door_y = -64
	}
	else
	{
		if player.entering_daepiso = 0 || player.image_alpha <= 0
		{
		t_door_y = 0
		}
	}
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
	player.x = 4520
	player.y = 373
	global.p_floor = 366
	global.n_room = 1
	
	obj_BG.image_index = 1
	
	obj_camera.tv_x = 128*6.5
	obj_camera.tv_y = 72*6.5
	obj_camera.t_x = -4
	obj_camera.t_y = 300
	anime = -100
	}
	else
	{
	player.vspeed = 0
	player.gravity = 0
	if player.image_alpha > 0
	{
	player.image_alpha -= 0.01
	global.p_floor -= 1
	player.y -= 1
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
	global.t_in_building = 0.15
	
		if global.got_wakchori != 0 && global.wave != 1
		{
		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Dae-pi-so"
		_mes.sub_text = "이후 몰려올 혐팬치들을 조질 때 필요한 것들을 준비하세요!"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 180
		}
	}
}