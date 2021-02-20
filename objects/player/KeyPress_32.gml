/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y+1,obj_floor)
{
	if jump = 0 && cannot_move = 0 && cooltime = 0
	{
	var sfx = audio_play_sound(jump_sfx,0,0)
	audio_sound_gain(sfx,0.6*global.master_volume*global.sfx_volume,0)
	vspeed = -6
	jump = 0
	jump_end_motion = 0
	b_movement_speed = 0
	y -= 1.2
	jump = 1
	
	if image_xscale < 0 && global.movement_speed > 0
	{
	global.movement_speed = abs(global.movement_speed)
	}
	if image_xscale > 0 && global.movement_speed < 0
	{
	global.movement_speed = -abs(global.movement_speed)
	}

	b_movement_speed = global.movement_speed
	cannot_move = 1
	}
}