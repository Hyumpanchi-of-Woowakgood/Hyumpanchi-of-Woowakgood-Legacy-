/// @description Insert description here
// You can write your code in this editor
depth = player.depth+1

image_xscale = -1
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



if sprite_index = move_sprite
{
	if hit_cooltime = 0 && cannot_move = 0 && hit_motion = 0 && knocked_down_ef = 0
	{
		if abs(x - t_x) < 0.2
		{
		t_x = x
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

	if place_meeting(x+movement_speed*0.7-16*image_xscale,366,obj_floor)
	{
		if !place_meeting(x-image_xscale*16,y-1,obj_floor)
		{
		x += movement_speed*0.7
		}
	}
	else
	{
	movement_speed = 0
	t_x = x
	image_index = 0
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
	sprite_index = move_sprite
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


if cannot_move > 0 && hit_motion = 0
{
image_index = 0
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