/// @description Insert description here
// You can write your code in this editor
if sprite_index = move_sprite
{
	if floor(image_index) = 3 || floor(image_index) = 9
	{
		if !audio_is_playing(footstep_sfx)
		{
		var sfx = audio_play_sound(footstep_sfx,0,0)
		audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.2*global.master_volume*global.sfx_volume,0)
		}
	}
}


if hit_motion = -1
{
sprite_index = hurt_sprite
image_index = 1
}
else if hit_motion > 0
{
sprite_index = hurt_sprite
image_index = 0
}


if point_distance(x,y,player.x,player.y) <= 45 && hp > 0 && cannot_move = 0 && hit_motion = 0 && hit_cooltime = 0
{
	if attack_dilay = 0 && attack_ = 0
	{
	attack_dilay = 1
	if player.sprite_index = pl_move_skeleton
	{
	random_attack_chance = choose(1,1,1,1,1,1,0,0,0)
	}
	else
	{
	random_attack_chance = choose(1,1,0,-1,-1,-1)
	}
	alarm[6] = irandom_range(130,190)
	}
	
	if random_attack_chance = -1
	{
	var sg = sign(x - player.x)
	if sg = 0
	{
	sg = choose(-1,1)
	}
	movement_speed += sg*32
	vspeed = -4
	}
	
	if attack_ = 0 && random_attack_chance = 1
	{
	attack_ = 1
	random_attack_chance = 0
	}
}


if attack_ > 0 && hp > 0 && hit_motion = 0 && hit_cooltime = 0
{
cannot_move = 1
attack_ += 0.18
image_index = attack_
sprite_index = attack_sprite
movement_speed += (0 - movement_speed)*0.08
t_x = x

	if attack_sound_effect = 0 && attack_ > 2.5
	{
	var sfx = audio_play_sound(swing_sfx1,0,0)
	audio_sound_gain(sfx,(1 - point_distance(x,y,player.x,player.y)/64)*0.4*global.master_volume*global.sfx_volume,0)
	attack_sound_effect = 1
	
	var _ef = instance_create_depth(x,y,depth+1,effect_gyu_seong_attack)
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	
	movement_speed = -image_xscale*5
	}

	if attack_ > 8
	{
	attack_ = 0
	attack_sound_effect = 0
	cannot_move = 0
	attack_dilay = 0
	random_attack_chance = 0
	sprite_index = move_sprite
	}
}




if sprite_index = move_sprite
{
	if hit_cooltime = 0 && cannot_move = 0 && hit_motion = 0 && knocked_down_ef = 0
	{
		if abs(x - t_x) < 0.2
		{
		t_x = player.x
		}
		else
		{
		var __i = sign(t_x - x)

		if __i = 0
		{
		__i = choose(-0.2,0.2)
		}

		image_xscale = -__i

		movement_speed += (__i*6 - movement_speed)*0.05
		movement_speed += __i*0.03
		}
	}
}

	if place_meeting(x+movement_speed*0.7-16*image_xscale,obj_floor.y,obj_floor)
	{
		if !place_meeting(x-image_xscale*16,y-1,obj_floor)
		{
		x += movement_speed*0.7
		}
	}
	else
	{
		movement_speed = 0
		if attack_ = 0
		{
		t_x = player.x
		image_index = 0
		}
	}




if place_meeting(x,obj_floor.y+1,obj_floor) && knocked_down_ef = 0
{
movement_speed += (0 - movement_speed)*0.05
}


if hit_motion > 0
{
sprite_index = hurt_sprite
}
else
{
	if hit_motion != -1
	{
		if attack_ = 0
		{
		sprite_index = move_sprite
		}
	}
}

if hit_cooltime = 0 && gravity_ignore = 0
{
	if place_meeting(x,y+1,obj_floor) || place_meeting(x,y+vspeed,obj_floor)
	{
	gravity = 0
	vspeed = 0
	y = y+vspeed
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	gravity = 0.2
	}
}

if place_meeting(x,y+1.3,obj_floor)
{
	if hit_motion > 0 && knocked_down_ef = 0
	{
	hit_motion = -1
	alarm[4] = 30
	}
}
else
{
	if !place_meeting(x,y+1.3,obj_floor)
	{
		if hit_motion != 1 && knocked_down_ef = 0
		{
		hit_motion = 1
		alarm[4] = 30
		}
	}
}

if attack_ = 0
{
	if cannot_move > 0 && hit_motion = 0
	{
	image_index = 0
	}
}

repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor)
	{
	y -= 0.1
		if hit_stand_up = 1
		{
		hit_stand_up = 0
		alarm[2] = 45
		}
	}
	else
	{
	break;
	}
}

if sprite_index = move_sprite
{
image_index += (movement_speed)*0.12
}