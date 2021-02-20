/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y+2,obj_floor)
{
	if spin = 0 && cannot_move = 0 && cooltime = 0 && down_attack = 0 && down_attack_plusing = 0 && hurt = 0
	{
	spin = 1
	cannot_move = 1
	cooltime = 1
	global.stemina_cooltime = 0
	}
}
else
{
	if global.skill_down_attack > 0
	{
	if global.got_wakchori > 0
	{
		if global.stemina > 2.8
		{
			if down_attack = 0 && cannot_move = 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			jump_vsp_up = 1
			cooltime = 1
			global.stemina_cooltime = 0
			global.stemina -= 1.8
			}
		}
		else
		{
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	
	
		if global.stemina > 2.8
		{
			if down_attack = 0 && cannot_move = 1 && jump > 0 && cooltime = 0 && spin = 0 && down_attack_plusing = 0 && hurt = 0
			{
			down_attack = 1
			cooltime = 1
			cannot_move = 1
			jump = 0
			jump_end_motion = 0
			b_movement_speed = 0
			jump_vsp_up = 1
			cooltime = 1
			global.stemina_cooltime = 0
			global.stemina -= 1.8
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