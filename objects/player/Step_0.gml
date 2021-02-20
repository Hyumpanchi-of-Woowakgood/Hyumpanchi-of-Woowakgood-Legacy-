/// @description Insert description here
// You can write your code in this editor

if sprite_index = pl_move_skeleton
{
	if floor(image_index) = 3 || floor(image_index) = 9
	{
		if !audio_is_playing(footstep_sfx)
		{
		var sfx = audio_play_sound(footstep_sfx,0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
		}
	}
}

if global.hp <= 1
{
scene_staring ++
global.t_in_building += 0.01
global.bgm_volume -= 0.01
	if dead = 0
	{
	a___ = audio_play_sound(wakgood_hurt,0,0)
	dead = 1
	}
	
a_sound -= 0.023
audio_sound_gain(a___,0.2*global.master_volume*a_sound*global.sfx_volume,0)

	
	if hurt = 0
	{
	hurt = 1
	}
entering_daepiso = 1
cannot_move = 0
sprite_index = pl_hurt
image_index = 1
gravity = 0.15
	if scene_staring > 150
	{
	room_goto(room1)
	global.t_in_building = -0.01
	a_sound = 1
	dead = 0
	}
}


if entering_daepiso = 0
{

repeat(100)
{
	if place_meeting(x,y+0.2,obj_floor)
	{
	y -= 0.1
	jump_attack_used = 0
	turning_attack_used = 0
	}
	else
	{
	break;
	}
}

if !place_meeting(x,y+1,obj_floor)
{
	if jump = 0 && spin_attack = 0 && jump_attack = 0 && down_attack = 0
	{
	jump = 1
	jump_vsp_up = 1
	}
	
	if pressed_a_key+pressed_d_key != 0 && cooltime = 0
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*0.7
		}
	}
}


if spin_attack = 0 && jump_attack = 0 && down_attack = 0
{
	if place_meeting(x,y+1,obj_floor)
	{
	jump_attack_used = 0
	turning_attack_used = 0
	gravity = 0
	vspeed = 0
	t_y = y+vspeed
	
		if jump > 4
		{
		jump_end_motion = 1
		}
		
		if jump_end_motion = 1
		{
			if b_movement_speed > 0.11
			{
				if !place_meeting(x-image_xscale*32,y,obj_floor)
				{
				x += (1.5)*0.7
				}
			}
			else if b_movement_speed < -0.11
			{
				if !place_meeting(x-image_xscale*32,y,obj_floor)
				{
				x += (-1.5)*0.7
				}
			}
		}
		
		if jump_end_motion = 1
		{
		jump -= 0.9
		image_index = jump
		}
		
		if jump <= 0 && jump_end_motion = 1
		{
		jump_vsp_up = 0
		cannot_move = 0
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		sprite_index = pl_move_skeleton
		}
	}
	else
	{
	gravity = 0.2
	}
}


if sprite_index = pl_move_skeleton
{
image_index += abs(global.movement_speed)*0.12
}

if !place_meeting(x-image_xscale*48,y,obj_floor)
{
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	x += (global.movement_speed)*0.7 
	}
}

if pressed_d_key+pressed_a_key = 0 && cannot_move = 0 && attack_ = 0
{
global.movement_speed += (0 - global.movement_speed)*0.23
image_index += (0 - image_index)*0.1
}

if pressed_d_key+pressed_a_key != 0 && cannot_move = 0 && attack_ = 0
{
image_xscale = -abs(image_xscale)*(pressed_d_key+pressed_a_key)
}

if cannot_move != 0
{
pressed_a_key = 0
pressed_d_key = 0
}

if spin > 0 && down_attack = 0
{
	if spin = 1
	{
	var sfx = audio_play_sound(jump_sfx,0,0)
	audio_sound_gain(sfx,0.6*global.master_volume*global.sfx_volume,0)
	var random_val = choose(1,0,0)
		if random_val = 1
		{
		var sfx = audio_play_sound(choose(yayaya,sagaji,sagaji),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
		}
	}
sprite_index = pl_move_skeleton_spin
spin += 0.3
image_index = spin
global.movement_speed = 0

	if spin < 11
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*(11 - floor(spin))*0.7
		}
	}
	
	if spin >= 11
	{
	sprite_index = pl_move_skeleton
	spin = 0
	cooltime = 1
	alarm[1] = 8
	cannot_move = 0
	}
}





if spin_attack > 0 && down_attack = 0
{
	if pressed_d_key+pressed_a_key != 0
	{
	image_xscale = -abs(image_xscale)*(pressed_d_key+pressed_a_key)
	}
sprite_index = pl_move_skeleton_spin_attack
spin_attack += 0.3
global.movement_speed = 0
if spin_attack <= 7
{
image_index = spin_attack
}
else
{
image_index = 7
}

	if image_index > 5
	{
		if image_angle = 0
		{
		image_index = 5
		}
	}
	

	if spin_attack < 6
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*2.2
		}
	
		if vspeed > 0
		{
		gravity = 0.21
		}
		
		spin_attack_angle_p = 1
	}
	else
	{
	gravity = 0
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*0.67
		}
	spin_attack_angle_p++
	
	if spin_attack >= 7 && image_angle != 0
	{
		if hurt = 0
		{
		var _ef = instance_create_depth(x,y,depth+1,effect)
		_ef.image_index = image_index
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.6
		_ef.image_angle = image_angle+spin_attack_angle_p*60*(abs(image_xscale)/image_xscale)+10*(abs(image_xscale)/image_xscale)
		}
	
		if spin_attack_sfx_on = 0
		{
		var sfx = audio_play_sound(spin_attack_sfx,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)
		
		var sfx = audio_play_sound(aaang_,0,0)
		audio_sound_gain(sfx,0.23*global.master_volume*global.sfx_volume,0)
		spin_attack_sfx_on = 1
		}
	}
	
		if spin_attack_angle_p > 1
		{
		image_angle += 120*(abs(image_xscale)/image_xscale)
		spin_attack_angle_p = 0
		}
	}
	
	if spin_attack >= 13
	{
	sprite_index = pl_move_skeleton
	image_angle = 0
	spin_attack = 0
	cannot_move = 0
	spin_attack_angle_p = 0
	spin_attack_sfx_on = 0
	cooltime = 1
	alarm[1] = 14
	}
}



if jump > 0 && jump_end_motion = 0 && down_attack = 0
{
	if jump < 5
	{
	jump += 0.3
	}
sprite_index = pl_move_skeleton_spin_jump
global.movement_speed += (0 - global.movement_speed)*0.4

if !place_meeting(x-image_xscale*16,y,obj_floor)
{
	if b_movement_speed > 0 && b_movement_speed < 3
	{
	x += (b_movement_speed*2)*0.7
	}
	else
	{
	x += (b_movement_speed)*0.7
	}
}


	if jump > 4
	{
	image_index = 5
		if jump_vsp_up != 1
		{
		    
		jump_vsp_up = 1
		}
	}
	else
	{
	image_index = jump
	}
}



if jump_attack > 0 && down_attack = 0 && spin_attack = 0
{
jump_attack += 0.3
sprite_index = pl_move_skeleton_jump_attack
image_index = jump_attack
global.movement_speed = 0

	if jump_attack > 5
	{
		if jump_attack_sfx_on != 1
		{
		jump_attack_sfx_on = 1
		var sfx = audio_play_sound(jump_attack_sfx,0,0)
		audio_sound_gain(sfx,0.6*global.master_volume*global.sfx_volume,0)
		
		var random_val = choose(1,0,0)
			if random_val = 1
			{
			var sfx = audio_play_sound(choose(yayaya,yayaya,sagaji),0,0)
			audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
			}
		}
	
	jump_attack += 0.12
	jump_attack_motion_dilay ++
		if jump_attack_vsp_up != 1
		{
		vspeed -= 4
		jump_attack_vsp_up = 1
		}
		
		if hurt = 0
		{
			if jump_attack_motion_dilay > 2
			{
			var _ef = instance_create_depth(x,y,depth+1,effect_jump_attack)
			_ef.image_index = image_index
			_ef.image_xscale = image_xscale
			_ef.image_alpha = 0.6
			jump_attack_motion_dilay = 0
			}
		}
	
		
		if jump_attack < 11
		{
			if !place_meeting(x-image_xscale*32,y,obj_floor)
			{
			x += (-image_xscale)*0.7
			}
		}
	}
	
	if jump_attack > 15
	{
	jump_attack = 0
	cannot_move = 0
	jump_attack_vsp_up = 0
	jump_attack_sfx_on = 0
	image_index = 15
	cooltime = 1
	alarm[1] = 16
	}
}





if down_attack > 0 && spin_attack = 0
{
	if down_attack < 5
	{
	down_attack += 0.3
	}
	
sprite_index = pl_move_skeleton_down_attack
image_index = down_attack
global.movement_speed = 0

	if down_attack > 3
	{
	image_index = 4
	}
	
	if down_attack < 4
	{
		if !place_meeting(x-image_xscale*32,y,obj_floor)
		{
		x += (-image_xscale)*2.2
		}
	
		if down_attack > 6
		{
		image_index = 6
		}
		else
		{
		image_index = down_attack
		}
	
	gravity = 0.05
	down_attack_motion_dilay = 1
	}
	else
	{
	gravity = 0.36
		if down_attack_gravity < 1
		{
		vspeed += 3
		down_attack_gravity += 0.2
		}
		
		if !place_meeting(x-image_xscale*32,y,obj_floor) && down_attack < 4
		{
		x += (-image_xscale)*0.67
		}
		
	
	down_attack_motion_dilay++
	
	if hurt = 0
	{
		if down_attack_plusing != 1
		{
		var _ef = instance_create_depth(x,y,depth+1,effect_down_attack)
		_ef.sprite_index = pl_move_skeleton_down_attack1
		_ef.image_index = image_index
		_ef.image_xscale = image_xscale
		_ef.image_alpha = 0.6
		down_attack_motion_dilay = 0
		}
	}
	
	image_index = 4
	}
	
	if place_meeting(x,y+vspeed,obj_floor) || place_meeting(x,y+1,obj_floor)
	{
		if down_attack_sfx_on != 1
		{
		down_attack_sfx_on = 1
		var sfx = audio_play_sound(down_attack_sfx,0,0)
		audio_sound_gain(sfx,0.5*global.master_volume*global.sfx_volume,0)
		
		var sfx = audio_play_sound(gae_sae_ggya,0,0)
		audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)
		}
		
	vspeed += (0 - vspeed)*0.54
	down_attack_plusing = 1
	cooltime = 1
	}
	
	if down_attack_plusing > 0
	{
	down_attack ++
		if down_attack > 32
		{
		alarm[1] = 8
		down_attack_motion_dilay = 0
		down_attack_gravity = 0
		down_attack_sfx_on = 0
		down_attack_plusing = 0
		down_attack = 0
		cannot_move = 0
		sprite_index = pl_move_skeleton
		image_index = 0
		y -= 1
		}
	}
}






if attack_ > 0
{
attack_ += 0.16
sprite_index = pl_move_skeleton_attack
image_index = attack_
cannot_move = 1
cooltime = 1
global.movement_speed += (0 - global.movement_speed)*0.1

if attack_sfx_on = 0 && (floor(image_index) = 3)
{
var sfx = audio_play_sound(swing_sfx1,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)

var sfx = audio_play_sound(ssip,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*6.1
	}
	
	if hurt = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack1)
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

if attack_sfx_on = 0 && (floor(image_index) = 6)
{
var sfx = audio_play_sound(swing_sfx2,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)

var sfx = audio_play_sound(jjin,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*4.2
	}
	
	if hurt = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack2)
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

if attack_sfx_on = 0 && (floor(image_index) = 11)
{
var sfx = audio_play_sound(swing_sfx3,0,0)
audio_sound_gain(sfx,0.4*global.master_volume*global.sfx_volume,0)

var sfx = audio_play_sound(dda,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
attack_sfx_on ++
	if !place_meeting(x-image_xscale*32,y,obj_floor)
	{
	global.movement_speed += (-image_xscale)*5.5
	}
	
	if hurt = 0
	{
	var _ef = instance_create_depth(x,y,depth-1,effect_attack3)
	_ef.image_xscale = image_xscale
	_ef.image_alpha = 0.8
	}
}

	if attack_ > 6.4 && attack_ < 7 && keep_attacking = 0
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = pl_move_skeleton
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		}
	}
	
	if attack_ > 9.4 && attack_ < 10 && keep_attacking = 1
	{
		if keep_attack = 0
		{
		attack_ = 0
		keep_attack = 0
		keep_attacking = 0
		attack_sfx_on = 0
		sprite_index = pl_move_skeleton
		alarm[1] = 12
		alarm[3] = 13
		}
		else
		{
		keep_attacking ++
		attack_sfx_on = 0
		}
	}
	
	if attack_ > 14.4 && keep_attacking = 2
	{
	attack_ = 0
	keep_attack = 0
	keep_attacking = 0
	attack_sfx_on = 0
	sprite_index = pl_move_skeleton
	alarm[1] = 12
	alarm[3] = 13
	}
}
}