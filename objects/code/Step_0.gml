/// @description Insert description here
// You can write your code in this editor
depth = obj_camera.depth+1

global.wind_dir += (global.t_wind_dir - global.wind_dir)*0.01;



if global.n_room = 1
{
	if global.hp < 4
	{
	global.hp = 4
	}
}





if global.killed_wakchang = 0
{
	if global.gyu_seong_wave = 0
	{
		if global.wave != 11
		{
			if !audio_is_playing(sound0)
			{
			audio_stop_sound(mad_wakchang)
			global._bgm = audio_play_sound(sound0,0,0)
			}
		}
		else
		{
			if !audio_is_playing(mad_wakchang)
			{
			audio_stop_sound(sound0)
			global._bgm = audio_play_sound(mad_wakchang,0,0)
			}
		}
	}
	else
	{
		if !audio_is_playing(sound01)
		{
		audio_stop_sound(mad_wakchang)
		audio_stop_sound(sound0)
		global._bgm = audio_play_sound(sound01,0,0)
		}
	}
}

light_scaling_time++

if light_scaling_time > 80
{
light_scaling_++
light_scaling_time = 0
}

if light_scaling_ > 1
{
light_scaling_ = 0
}

if light_scaling_ = 0
{
global.light_scaling += 0.001
}
else
{
global.light_scaling -= 0.001
}



if room = room1
{
	if option = 1
	{
	instance_destroy(master_volume_setting)
	instance_destroy(bgm_volume_setting)
	instance_destroy(sfx_volume_setting)
	instance_destroy(full_screen_option)
	}
}


audio_sound_gain(global._bgm,(in_building_sound_down*0.62*global.master_volume*global.bgm_volume),0)

if global.killed_wakchang = 1
{
audio_stop_sound(sound0)
audio_stop_sound(sound01)
	if global.n_room = 0
	{
	global._bgm = audio_play_sound(mad_wakchang,0,0)
	global.killed_wakchang = 2
	}
}


if global.n_room = 0
{
	if global.playing_scene > 0
	{
	in_building_sound_down += (-0.1 - in_building_sound_down)*0.02
	}
	else
	{
	in_building_sound_down += (1 - in_building_sound_down)*0.02
	}
}
else
{
	if global.playing_scene > 0
	{
	in_building_sound_down += (0.1 - in_building_sound_down)*0.02
	}
	else
	{
	in_building_sound_down += (0.25 - in_building_sound_down)*0.02
	}
}



if room = room1
{
audio_stop_sound(sound0)
audio_stop_sound(mad_wakchang)
audio_stop_sound(sound01)
}

global.stemina_cooltime += 5
if global.stemina_cooltime > 300
{
global.stemina += 0.02
}

if global.stemina > 11
{
global.stemina = 11
}





if global.revived > 0 && room != room1
{
global.revived -= 0.01

	if global.revived >= 1
	{
		if revive_c = 0
		{
		obj_camera.x = player.x
		obj_camera.y = player.x
		player.y = -600
		vspeed = 0
		global.hp = 4
		revive_c = 1
		global.killed_wakchang = 0
		global.wave_start = 0
		global.left_enemy = 0
		global.gyu_seong_wave = 0
		if global.rain_event = 4
		{
		global.rain_event = 3
		}
		audio_stop_sound(sound01)
		
			if global.wave > 0
			{
			global.wave --
			}
		}
	}

	
	if global.revived <= 0
	{
	global.revived = 0
	revive_c = 0
	}
}

if global.revived = 0 && room != room1
{
global.bgm_volume += (global.origin_bgm_volume - global.bgm_volume)*0.2
}

if injured_effect > 0
{
injured_effect++
	if injured_effect > 13
	{
	injured_effect = 0
	}
}

if room = room1
{
instance_destroy(message_)
}


if global.n_room = 0
{
	if global.got_wakchori = 0
	{
	global.wave_start = 0
	}
}










if global.wave >= 4 && global.wave < 6 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 1
global.t_wind_dir = irandom_range(-100,100)/10
}


if global.wave >= 6 && global.wave <= 8 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 2
global.t_wind_dir = irandom_range(-100,100)/10
}


if global.wave >= 10 && global.wave <= 11 && global.wave_start = 1 && global.n_room = 0
{
global.rainy = 1
global.t_wind_dir = irandom_range(-100,100)/10
}



if global.wave_start > 0 && room != room1
{
	if global.wave != 10
	{
		if global.killed_wakchang = 0
		{
		global.wave_start = 0
		global.wave ++
		if global.wave > 4
		{
		global.left_enemy = 2+global.wave
		}
		else
		{
		global.left_enemy = global.wave
		}

		max_mob_create_cooltime = 60

		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Wave "+string(global.wave)
		_mes.sub_text = "조심하세요! 곧 혐팬치들이 몰려옵니다!"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 155
		}
		else
		{
		global.wave_start = 0
		global.wave ++
		global.left_enemy = 100+global.wave_start*2

		max_mob_create_cooltime = 60

		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Gop-Chang-nan-minsim"
		_mes.sub_text = "분노한 왁창들과 함게 혐팬치들이 들이 몰려옵니다"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 180
		}
	}
	else
	{
		global.wave_start = 0
		global.wave ++
		global.left_enemy = 1

		max_mob_create_cooltime = 60

		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "Gyu-Seong-ii"
		_mes.sub_text = "규성이"
		_mes.auto_destroy = 0
		_mes.alarm[1] = 180
	}
}


if global.left_enemy < 0
{
global.left_enemy = 0
}


mob_create_cooltime += 1

if global.left_enemy > 0 && mob_create_cooltime > max_mob_create_cooltime && room != room1
{
	if global.wave != 11
	{
		if global.killed_wakchang = 0
		{
			if global.wave > 4
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_banana))
			}
			else
			{
			instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),hyumpanchi_punch)
			}
		}
		else
		{
		instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),choose(hyumpanchi_punch,hyumpanchi_punch,hyumpanchi_mad,hyumpanchi_mad,hyumpanchi_mad))
		}
	}
	else
	{
	instance_create_depth(irandom_range(704,2464),0,player.depth+choose(-1,1),gyu_seong)
	}
global.left_enemy --
mob_create_cooltime = 0
max_mob_create_cooltime = irandom_range(60,120)
}







global.in_building += (global.t_in_building - global.in_building)*0.03

if global.left_enemy <= 0 && global.n_room = 0 && instance_number(mob_parents) = 3 && room != room1
{
	if player.entering_daepiso = 0
	{
		if instance_number(message_) = 0
		{
		global.ready_for_the_next_wave = 1
		var _mes = instance_create_depth(x,y,-999,message_)
		_mes.t_image_alpha = 1
		_mes.text = "대피소로 들어가세요!"
		_mes.sub_text = "대피소로 들어가 이후 몰려올 혐팬치들을 조질 준비를 하세요"
		_mes.auto_destroy = 1
		}
	}
}