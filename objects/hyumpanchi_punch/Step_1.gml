/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,mob_parents)
{
var p_m_ins = instance_place(x,y,mob_parents)
	if (p_m_ins.object_index) = player
	{
	var __i = sign(p_m_ins.x - x)

		if __i = 0
		{
		__i = choose(-0.2,0.2)
		}
	t_x = player.x
	movement_speed = 0
	movement_speed -= __i*2
		if cannot_move = 0
		{
		cannot_move = 1
		alarm[2] = 14
		}
	}
	else
	{
		if p_m_ins.sprite_index != p_m_ins.hurt_sprite
		{
		var __i = sign(p_m_ins.x - x)

			if __i = 0
			{
			__i = choose(-0.2,0.2)
			}
		t_x = player.x
		movement_speed = 0
		movement_speed -= __i*2
			if cannot_move = 0
			{
			cannot_move = 1
			alarm[2] = 14
			}
		}
	}
}