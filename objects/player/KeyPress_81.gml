/// @description Insert description here
// You can write your code in this editor
if global.skill_turning_attack > 0 && turning_attack_used < global.skill_turning_attack
{
if global.got_wakchori > 0
{
	if global.stemina > 3.8
	{
		if spin_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0
		{
		turning_attack_used ++
		spin_attack = 1
		cannot_move = 1
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		jump_vsp_up = 1
		cooltime = 1
		global.stemina_cooltime = 0
		global.stemina -= 2.8
			if place_meeting(x,y+2,obj_floor)
			{
			gravity = 0.2
			vspeed = -4
			}
			else
			{
			vspeed = 0
			gravity = 0
			}
		}
	}
	else
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
	
	

	if !place_meeting(x,y+10,obj_floor) && hurt = 0
	{
		if global.stemina > 3.8
		{
			if spin_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0
			{
			turning_attack_used ++
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			spin_attack = 1
			cannot_move = 1
			jump_vsp_up = 1
			cooltime = 1
			gravity = 0
			vspeed = 0
			global.stemina_cooltime = 0
			global.stemina -= 2.8
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}
}
}