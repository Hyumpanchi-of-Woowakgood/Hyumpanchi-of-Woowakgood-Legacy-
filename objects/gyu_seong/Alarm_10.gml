/// @description Insert description here
// You can write your code in this editor
scene_dilay = 0

	if p_mes_for_p != -1
	{
	instance_destroy(p_mes_for_p)
	p_mes_for_p = -1
	}
	
	if p_mes != -1
	{
	instance_destroy(p_mes)
	p_mes = -1
	}
	
	var _mes = instance_create_depth(x,y,-999,message_)
	_mes.t_image_alpha = 1
	_mes.text = "Dol-a-on  Gyu-seong-ii"
	_mes.sub_text = "벤 당했다가 부계로 돌아온 규성이"
	_mes.auto_destroy = 0
	_mes.alarm[1] = 180

hp = 3000
armored_level = 4
knocked_down_ef = 0
max_hp = 3000
cannot_move = 0
move_sprite = pl_move_mad_gyu_seong_spin_jump
hurt_sprite = pl_hurt_gyu_seong_mad
attack_sprite = pl_move_gyu_seong_attack_mad

var sfx = audio_play_sound(sound5,0,0)
audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)

var sg = sign(x - player.x)
	if sg = 0
	{
	sg = choose(-1,1)
	}
	movement_speed += sg*32

audio_stop_sound(sound0)
player.cannot_move = 0
global.playing_scene = 0
global.gyu_seong_wave = 1