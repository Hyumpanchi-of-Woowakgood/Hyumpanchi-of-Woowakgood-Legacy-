/// @description Insert description here
// You can write your code in this editor

if attack_paturn = 0
{
	if x < 704
	{
	movement_speed += 25
	vspeed = -6
	}

	if x > 2464
	{
	movement_speed -= 25
	vspeed = -6
	}
}


if global.gyu_seong_wave = 1
{
	if attack_paturn = 0
	{
	mac = 0
		if before_paturn != 3
		{
		stemina += 1
		obj_camera.tv_x = 1280*0.8
		obj_camera.tv_y = 720*0.8
		}
		else
		{
			if instance_number(mob_parents) = 4
			{
			stemina = 601
			obj_camera.tv_x = 1280*0.8
			obj_camera.tv_y = 720*0.8
			}
			else
			{
			stemina = 0
			obj_camera.tv_x = 1280*1.1
			obj_camera.tv_y = 720*1.1
			}
		}

		if stemina > 600
		{
			if cannot_move = 1
			{
			var sg = sign(x - player.x)
				if sg = 0
				{
				sg = choose(-1,1)
				}
			movement_speed += sg*32
			stemina = 0
			cannot_move = 0
			vspeed = -5
			}

			var _random_p = choose(1,2,1,2,3,3,4,5,4,5,4,5)
			repeat(9999)
			{
				if _random_p = before_paturn
				{
				var _random_p = choose(1,2,1,2,3,3,4,5,4,5,4,5)
				}
				else
				{
				attack_paturn = _random_p
				before_paturn = _random_p
				break;
				}
			}
		}
	}

	if attack_paturn = 1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,2664,600) > 2
		{
		x += (2664 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 1.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		}
	movement_speed = 0
	}
	
	if attack_paturn >= 1.01 && attack_paturn < 1.1
	{
	attack_paturn += 0.01
	}

	if attack_paturn = 1.1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = 1
		if laser = -1
		{
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		}
	
	movement_speed = -4
	x += movement_speed*0.7
		if x < 604
		{
		attack_paturn = 0
		instance_destroy(laser)
		laser = -1
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_end_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}

	if attack_paturn = 2
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = 1
		if point_distance(x,y,604,600) > 2
		{
		x += (604 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 2.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		}
	movement_speed = 0
	}
	
	if attack_paturn >= 2.01 && attack_paturn < 2.1
	{
	attack_paturn += 0.01
	}

	if attack_paturn = 2.1
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if laser = -1
		{
		laser = instance_create_depth(x,y+16,depth-2,block_laser)
		laser.width = 16
		laser.x2 = x
		laser.y2 = y
		laser.direction = -90
		var sfx = audio_play_sound(laser_start_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
		else
		{
		laser.x = x
		laser.y = y+16
		}
	
	movement_speed = 4
	x += movement_speed*0.7
		if x > 2664
		{
		attack_paturn = 0
		instance_destroy(laser)
		laser = -1
		gravity_ignore = 0
		movement_speed = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_end_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}
	
	
	if attack_paturn = 3
	{
		for(var i = 0; i < choose(2,2,3,3,3,3,4); i++)
		{
		instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_banana))
		}
	attack_paturn = 0
	}
	
	
	if attack_paturn = 4
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,2664,600) > 2
		{
		x += (2664 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 4.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		mac ++
		}
	movement_speed = 0
	}
	
	
	if attack_paturn > 4 && attack_paturn < 5
	{
	movement_speed = -25
	x += movement_speed*0.7
	
	mine_craft_cre++
	if mine_craft_cre > 2
	{
	instance_create_depth(x,y,player.depth-1,minecraft_)
	mine_craft_cre = 0
	}
	
		if x < 604
		{
			if mac < 2
			{
			attack_paturn = choose(5,0,0)
			}
			else
			{
			attack_paturn = 0
			}
		gravity_ignore = 0
		movement_speed = 0
		mine_craft_cre = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		}
	}
	
	
	
	
	
	if attack_paturn = 5
	{
	gravity_ignore = 1
	gravity = 0
	vspeed = 0
	cannot_move = 0
	sprite_index = move_sprite
	image_xscale = -1
		if point_distance(x,y,604,600) > 2
		{
		x += (604 - x)*0.03
		y += (600 - y)*0.03
		}
		else
		{
		attack_paturn = 5.01
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		mac ++
		}
	movement_speed = 0
	}
	
	
	if attack_paturn > 5 && attack_paturn < 6
	{
	movement_speed = 25
	x += movement_speed*0.7
	
	mine_craft_cre++
	if mine_craft_cre > 2
	{
	instance_create_depth(x,y,player.depth-1,minecraft_)
	mine_craft_cre = 0
	}
	
		if x > 2664
		{
			if mac < 2
			{
			attack_paturn = choose(4,0,0)
			}
			else
			{
			attack_paturn = 0
			}
		gravity_ignore = 0
		movement_speed = 0
		mine_craft_cre = 0
		gravity = 0.2
		stemina = 0
		var sfx = audio_play_sound(laser_ready_sfx,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		obj_camera.tv_x = 1280*1.3
		obj_camera.tv_y = 720*1.3
		}
	}
}














if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	}
}

if y > room_width
{
hp = -1
}

if knocked_down_ef > 0
{
cannot_move = 1
hit_motion = 1
sprite_index = hurt_sprite
movement_speed += (0 - movement_speed)*0.1

	if place_meeting(x,y+1,obj_floor)
	{
	image_index = 1
	knocked_down_ef ++
	}
	else
	{
	knocked_down_ef = 1
	}
	
	if knocked_down_ef > 320 && scene > 4
	{
	image_alpha -= 0.05
		if image_alpha <= 0
		{
		instance_destroy()
		}
	}
}

if hit_cooltime > 0
{
t_x = x
hit_stand_up = 1
}

if hit_stand_up = 1
{
cannot_move = 1
}


if place_meeting(x,y,effect)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(52)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*1.8
	hit_cooltime = 1
	last_hit = 1
	vspeed = -1
	alarm[1] = 10
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}

if place_meeting(x,y,effect_jump_attack)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(29)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*0.4
	hit_cooltime = 1
	last_hit = 1
	vspeed = -5
	alarm[1] = 5
	cannot_move = 1
	alarm[2] = 24
	gravity_ignore = 1
	alarm[3] = 9
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}


if place_meeting(x,y,effect_down_attack)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(31)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*0.9
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.36
	vspeed += 4
	alarm[1] = 3
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}





if place_meeting(x,y,effect_attack1)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(16)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*2
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.36
	vspeed += 4
	alarm[1] = 23
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}




if place_meeting(x,y,effect_attack2)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(19)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*2
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 1.5
	alarm[1] = 25
	cannot_move = 1
	alarm[2] = 24
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}





if place_meeting(x,y,effect_attack3)
{
	if hit_cooltime = 0
	{
	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	t_hp_bar_alpha = 1
	alarm[5] = 90
	
	hp_minus_for_mob(21)
	
	movement_speed = 0
	var __i = sign(x - player.x)
	if __i = 0
	{
	__i = choose(-1,1)
	}
	
	
	var random_val = choose(0,0,1)
	
	if random_val = 1
	{
	var bl_ef = instance_create_depth(x,y,depth-1,ef_blood)
	var img_scale = -__i*irandom_range(8,15)/10
	bl_ef.image_xscale = img_scale
	bl_ef.image_yscale = abs(img_scale)
	bl_ef.t_x = __i
	}
	
	movement_speed += __i*2.5
	hit_cooltime = 1
	last_hit = 1
	gravity = 0.2
	vspeed -= 3.5
	alarm[1] = 32
	cannot_move = 1
	alarm[2] = 32
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}