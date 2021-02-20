/// @description Insert description here
// You can write your code in this editor

if y > room_height+100
{
hp_minus_for_player(global.hp+1)
}



if place_meeting(x,y-20,obj_upth_floor)
{
vspeed += 2
gravity = 0.4
y += 5
hurt = 1
}

if entering_daepiso = 0
{
if hurt > 0
{
cannot_move = 1
sprite_index = pl_hurt
global.movement_speed += (0 - global.movement_speed)*0.1

if attack_ > 0
{
	attack_ = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = pl_move_skeleton
	alarm[1] = 12
	alarm[3] = 13
}


	if place_meeting(x,y+1,obj_floor)
	{
	image_index = 1
	
		if hurt = 1
		{
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.6*global.master_volume*global.sfx_volume,0)
		
		var random_val = choose(0,0,0,1)
			if random_val = 1
			{
			var sfx = audio_play_sound(choose(yayaya,jyunne_a_i_upne,jyunne_a_i_upne,gae_sae_ggya,sagaji,sibalruna),0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
			}
		}
	
	hurt++
	}
	else
	{
	image_index = 0
	hurt = 1
	}
	
	if hurt > 45
	{
	hurt = 0
	cannot_move = 0
	sprite_index = pl_move_skeleton
	}
}




if place_meeting(x,y,effect_punch_attack) && spin = 0
{
	if hurt = 0
	{
	hurt = 1
	cannot_move = 1
	global.movement_speed = -image_xscale*7

	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
	hp_minus_for_player(0.5)
	}
}


if place_meeting(x,y,effect_banana_attack) && spin = 0
{
	if hurt = 0
	{
	hurt = 1
	cannot_move = 1
	global.movement_speed = -image_xscale*13

	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
	hp_minus_for_player(1)
	}
}



if place_meeting(x,y,effect_punch_attack_mad) && spin = 0
{
	if hurt = 0
	{
	hurt = 1
	cannot_move = 1
	global.movement_speed = -image_xscale*13

	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
	hp_minus_for_player(2)
	}
}


if place_meeting(x,y,effect_gyu_seong_attack) && spin = 0
{
	if hurt = 0
	{
	hurt = 1
	cannot_move = 1
	global.movement_speed = -image_xscale*32

	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
	hp_minus_for_player(1.8)
	}
}


if place_meeting(x,y,minecraft_)
{
	if hurt = 0
	{
	hurt = 1
	cannot_move = 1
	global.movement_speed = -image_xscale*32

	var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
	audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
	hp_minus_for_player(3.8)
	}
}


/////////////////////////////////////////////////////////////////////////////////
}