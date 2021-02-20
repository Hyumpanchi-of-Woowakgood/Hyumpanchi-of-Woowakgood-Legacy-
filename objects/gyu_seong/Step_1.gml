/// @description Insert description here
// You can write your code in this editor


if global.gyu_seong_wave = 1
{
red_effect_dilay ++

	if red_effect_dilay = 1
	{
	var ef = instance_create_depth(x,y,depth+1,gyu_seong_red_ef)
	ef.sprite_index = sprite_index
	ef.image_index = image_index
	ef.image_xscale = image_xscale
	}
	
	if red_effect_dilay > 1
	{
	red_effect_dilay = 0
	}
}

if hp <= 0
{
player.cannot_move = 1
global.playing_scene = 1
if player.sprite_index = pl_move_skeleton
{
player.image_index = 0
}

	if global.gyu_seong_wave = 1
	{
	attack_paturn = 0
	stemina = 0
	instance_destroy(hyumpanchi_punch)
	instance_destroy(hyumpanchi_banana)
	instance_destroy(minecraft_)
	
		if laser != -1
		{
		instance_destroy(laser)
		laser = -1
		}
	
		if scene = 4
		{
		scene = 5
		}
	
		if scene = 5
		{
			if p_mes_for_p = -1
			{
			p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_for_p.text = "다음에 부계로 다시 올거다 기다려라 우왁굳"
			p_mes_for_p.target = id
			}
		}
		
		if scene = 6
		{
			if p_mes_for_p = -1
			{
			p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_for_p.text = "규성아 아이디가 도대체 몇 개야"
			p_mes_for_p.target = player
			var sfx = audio_play_sound(guseong_a,0,0)
			audio_sound_gain(sfx,0.6*global.master_volume*global.sfx_volume,0)
			scene ++
			}
		}
		
		if scene = 7
		{
		image_alpha -= 0.001
		}
	
		if image_alpha <= 0
		{
		global.gyu_seong_wave = 0
		global.playing_scene = 0
		player.cannot_move = 0
		instance_destroy()
		}
	}
	
	

	
	if scene = 0 && scene_a = 0
	{
	
	if p_mes_for_p = -1
	{
	global.movement_speed = 0
	p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes_for_p.text = "규성아. 조용히 해"
	p_mes_for_p.target = player
	
	var sfx = audio_play_sound(shut_up,0,0)
	audio_sound_gain(sfx,0.5*global.master_volume*global.sfx_volume,0)
	}
	
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
	
	scene_dilay = 1
	alarm[9] = 30
	scene_a = 1
	}
	
	if scene = 1
	{
		if p_mes_for_p = -1
		{
		p_mes_for_p = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_for_p.text = "너 벤이야 규성아."
		p_mes_for_p.target = player
		}
	}
	
	if scene = 2
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "내가 벤 한다고 해서 가만히 있을거 같아?"
		p_mes.target = id
		}
	}
	
	if scene = 3
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어림도 없지"
		p_mes.target = id
		}
	scene ++
	alarm[10] = 200
	}
}








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