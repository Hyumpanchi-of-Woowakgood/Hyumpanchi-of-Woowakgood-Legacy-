/// @description Insert description here
// You can write your code in this editor
if global.skill_jump_attack > 0 && jump_attack_used < global.skill_jump_attack
{
if global.got_wakchori > 0
{
	if global.stemina > 2.5
	{
		if jump_attack = 0 && cannot_move = 0 && cooltime = 0 && hurt = 0
		{
		jump_attack_used ++
		jump_attack = 1
		cannot_move = 1
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		jump_vsp_up = 1
		cooltime = 1
		vspeed = 0
		gravity = 0
		global.stemina -= 1.5
		global.stemina_cooltime = 0
		}
	}
	else
	{
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}

if !place_meeting(x,y+10,obj_floor)
{
	if global.stemina > 2.5
	{
		if jump_attack = 0 && cannot_move = 1 && cooltime = 0 && jump > 0 && hurt = 0
		{
		jump_attack_used ++
		gravity = 0
		vspeed = 0
		jump = 0
		jump_end_motion = 0
		b_movement_speed = 0
		jump_attack = 1
		cannot_move = 1
		jump_vsp_up = 1
		cooltime = 1
		global.stemina -= 1.5
		global.stemina_cooltime = 0
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