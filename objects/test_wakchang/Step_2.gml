/// @description Insert description here
// You can write your code in this editor
if global.killed_wakchang = 0 && global.got_wakchori = 1 && global.playing_scene = 0
{
	if can_message > 0 && can_message < 10
	{
		if can_message = 1
		{
			if p_mes_guide = -1
			{
			p_mes_guide = instance_create_depth(x,y,player.depth-1,player_message)
			if global.hp < 2
			{
			p_mes_guide.text = "형 많이 아파 보이는데 내가 치료해 줄 수 있어"
			}
			else
			{
			p_mes_guide.text = choose("조작키 까먹었으면 나한테 다시 물어봐 형","새로운 스킬을 배우거나 강화하려면 나한테 말걸어 형")
			}
			p_mes_guide.target = id
			alarm[7] = 180
			can_message = 2
			}
		}
	}
}


if place_meeting(x,y-20,obj_upth_floor)
{
vspeed += 2
gravity = 0.4
y += 5
hit_cooltime = 1
hit_motion = 1
cannot_move = 1
alarm[1] = 10
alarm[2] = 24
}

if knocked_down_ef = 0
{
	if hp <= 0
	{
	knocked_down_ef = 1
	}
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
	}
	knocked_down_ef ++
	
	if global.killed_wakchang = 0
	{
	global.killed_wakchang = 1
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
	alarm[1] = 13
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
	alarm[1] = 10
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
	alarm[1] = 10
	cannot_move = 1
	alarm[2] = 32
		if hit_motion = 0
		{
		hit_motion = 1
		}
	}
}