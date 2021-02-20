/// @description Insert description here
// You can write your code in this editor
if global.killed_wakchang = 0
{
	if rejected = 1
	{
		if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-5
		{
			if skiping_dilay = 0 && tuto_scene != -1 && tuto_scene != -4 && tuto_scene >= 0
			{
				if tuto_scene != 8 && tuto_scene != 5.5
				{
				skiping_dilay = 1
				tuto_scene ++
				player.image_index = 0
				instance_destroy(p_mes_tuto)
				p_mes_tuto = -1
				tip_alpha = -10
				alarm[6] = 2
				}
	
				if tuto_scene = 5.5 || tuto_scene = 5.75
				{
				skiping_dilay = 1
				tuto_scene += 0.25
				player.image_index = 0
				instance_destroy(p_mes_tuto)
				p_mes_tuto = -1
				tip_alpha = -10
				alarm[6] = 2
				}
			}

			if rejected = 1
			{
			skiping_dilay = 1
			tuto_scene = 3
			rejected = 0
			p_mes_tuto = -1
			tip_alpha = -10
			player.image_index = 0
			global.movement_speed = 25
			alarm[6] = 2
			}
		}
	}
	else
	{
		if story_talk = 1
		{
			if skiping_dilay = 0 && tuto_scene != -1 && tuto_scene != -4 && tuto_scene >= 0
			{
				if global.got_wakchori = 0
				{
					if tuto_scene != 8 && tuto_scene != 5.5
					{
					skiping_dilay = 1
					tuto_scene ++
					player.image_index = 0
						if p_mes_tuto != -1
						{
						instance_destroy(p_mes_tuto)
						p_mes_tuto = -1
						}
					tip_alpha = -10
					alarm[6] = 2
					}
	
					if tuto_scene = 5.5 || tuto_scene = 5.75
					{
					skiping_dilay = 1
					tuto_scene += 0.25
					player.image_index = 0
						if p_mes_tuto != -1
						{
						instance_destroy(p_mes_tuto)
						p_mes_tuto = -1
						}
					tip_alpha = -10
					alarm[6] = 2
					}
				}
				else
				{
				skiping_dilay = 1
				tuto_scene += 1
				player.image_index = 0
					if p_mes_tuto != -1
					{
					instance_destroy(p_mes_tuto)
					p_mes_tuto = -1
					}
				tip_alpha = -10
				alarm[6] = 2
				}
			}

			if rejected = 1
			{
			skiping_dilay = 1
			tuto_scene = 3
			rejected = 0
			p_mes_tuto = -1
			tip_alpha = -10
			player.image_index = 0
			global.movement_speed = 25
			alarm[6] = 2
			}
		}
		else
		{
			if scene__ > 0
			{
				if skiping_dilay = 0
				{
				message_dilay = 1
				player.cannot_move = 1
				player.image_xscale = 1
				player.image_index = 0
				skiping_dilay = 1
				scene__ ++
				tip_alpha = -10
					if p_mes != -1
					{
					instance_destroy(p_mes)
					p_mes = -1
					}
				tip_alpha = -10
				alarm[6] = 2
				}
			}
			
			if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-5
			{
				if skiping_dilay = 0
				{
				global.playing_scene = 1
				message_dilay = 1
				global.movement_speed = 16
				player.cannot_move = 1
				player.image_xscale = 1
				player.image_index = 0
				skiping_dilay = 1
				scene__ = 1
				tip_alpha = -10
					if p_mes != -1
					{
					instance_destroy(p_mes)
					p_mes = -1
					}
				alarm[6] = 2
				}
			}
		}
	}
}