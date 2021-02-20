/// @description Insert description here
// You can write your code in this editor
if story_talk = 1
{
	if skiping_dilay = 0 && tuto_scene != -1
	{
		if tuto_scene = 5
		{
		instance_destroy(p_mes_tuto)
		p_mes_tuto = -1
		skiping_dilay = 1
		tuto_scene += 0.5
		alarm[6] = 60
		}
	}
}
else
{
	if scene__ = 3
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		scene__ += 2
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 60
		}
	}
	
	if scene__ = 18
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= 10000
		{
		scene__ = 21
		global.money -= 10000
		global.skill_jump_attack ++
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 25
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= 13000
		{
		scene__ = 27
		global.money -= 13000
		global.skill_turning_attack ++
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 31
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= 7000
		{
		scene__ = 33
		global.money -= 7000
		global.skill_down_attack ++
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
	
	if scene__ = 36
	{
		if skiping_dilay = 0
		{
		message_dilay = 1
		player.cannot_move = 1
		player.image_xscale = 1
		player.image_index = 0
		skiping_dilay = 1
		if global.money >= 1000
		{
		scene__ = 38
		global.money -= 1000
		}
		else
		{
		scene__ = 20
		}
		tip_alpha = -10
			if p_mes != -1
			{
			instance_destroy(p_mes)
			p_mes = -1
			}
		tip_alpha = -10
		alarm[6] = 15
		}
	}
}