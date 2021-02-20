/// @description Insert description here
// You can write your code in this editor
if place_meeting(x,y,player)
{
var __i = sign(player.x - x)

	if __i = 0
	{
	__i = choose(-0.2,0.2)
	}
t_x = x
movement_speed = 0
movement_speed -= __i*2
	if cannot_move = 0
	{
	cannot_move = 1
	alarm[2] = 14
	}
}


if skiping_dilay = 0 && global.playing_scene = 1
{
tip_alpha += (1 - tip_alpha)*0.01
}






if p_mes = -1 && player.entering_daepiso = 0 && hp > 0
{
	if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) <= 32 && global.in_building <= 0.16 && player.x >= test_wakchang.x-5
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "상호작용 (D)"
	p_mes.target = player
	}
}


if scene__ = 1
{
player.x += (x+140 - player.x)*0.1
	
	
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형!"
	p_mes.target = id
	}
}

if scene__ = 2
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "뭐 원하는거 있어?"
	p_mes.target = id
	}
}

if scene__ = 3
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(player.x,player.y,player.depth-1,player_message)
	p_mes.text = "체력 회복 (A) / 스킬 (S) / 아니 없어 (D) / 조작키 (F)"
	p_mes.target = player
	}
}

if scene__ = 4
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "혹시 원하는 게 있으면 언제든 말 걸어줘 형!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 5
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "형을 위해 다시 한번 알려주자면,"
	p_mes.target = id
	}
}

if scene__ = 6
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "A키가 기본공격,"
	p_mes.target = id
	}
}

if scene__ = 7
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "S키는 구르기, 그리고 스페이스 바는 점프"
	p_mes.target = id
	}
}

if scene__ = 8
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "그래도 모르겠다면 다시 말 걸어줘 형!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 9
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "오! 형!"
	p_mes.target = id
	}
}

if scene__ = 10
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "스킬에 관심이 생긴거야? 좋아!"
	p_mes.target = id
	}
}

if scene__ = 11
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "스킬은 총 3종류가 있어 형"
	p_mes.target = id
	}
}

if scene__ = 12
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "원하는 스킬 정보를 알고싶다면 이중 하나를 선택 해줘 형"
	p_mes.target = id
	}
}

if scene__ = 13
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "올려치기 (W) / 회전돌리기 (Q) / 내려찍기 (S) / 응관심없어 (D)"
	p_mes.target = id
	}
}

if scene__ = 14
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "혹시나 다시 관심이 생기면 말을 걸어줘 형!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 15
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "오 올려치기! 좋지 형!"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어? 이미 스킬을 배웠네? 형?"
		p_mes.target = id
		
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}
}

if scene__ = 16
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "올려치기는 평균 29데미지로 상대를 공중으로 띄울 수 있어!"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "그럼 강화를 통해 공중에서 사용 할 수 있는 횟수를 늘릴 수 있어"
		p_mes.target = id
		}
	}
}

if scene__ = 17
{
	if p_mes = -1
	{
		if global.skill_jump_attack = 0
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "10000원 주고 배워볼래? 형?"
		p_mes.target = id
		}
		else
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "10000원 주고 스킬을 강화해 볼래? 형?"
		p_mes.target = id
		}
	}
}

if scene__ = 18
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "아니 (D) / 그래 (F)"
	p_mes.target = player
	}
}

if scene__ = 19
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 20
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "이런! 형, 돈이 부족한거 같은데?"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	
	var sfx = audio_play_sound(cannot_buy,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
}

if scene__ = 21
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형! 스킬은 W키를 눌러서 사용할 수 있어!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
}

if scene__ = 22
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "오 회전돌리기! 좋지 형!"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어? 이미 스킬을 배웠네? 형?"
		p_mes.target = id
		
		var sfx = audio_play_sound(cannot_buy,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}
}

if scene__ = 23
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "회전돌리기는 상대를 공중에 머물게 하면서 평균 52데미지를 줘!"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "그럼 강화를 통해 공중에서 사용 할 수 있는 횟수를 늘릴 수 있어"
		p_mes.target = id
		}
	}
}

if scene__ = 24
{
	if global.skill_jump_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "13000원 주고 배워볼래? 형?"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "13000원 주고 스킬을 강화해 볼래? 형?"
		p_mes.target = id
		}
	}
}

if scene__ = 25
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "아니 (D) / 그래 (F)"
	p_mes.target = player
	}
}

if scene__ = 26
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 27
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형! 스킬은 Q키를 눌러서 사용할 수 있어!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
}

if scene__ = 28
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "오 내려찍기! 좋지 형!"
	p_mes.target = id
	}
}

if scene__ = 29
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "내려찍기는 공중에 있는 상대를 내리 꽂으면서 평균 31데미지를 줘!"
	p_mes.target = id
	}
}

if scene__ = 30
{
	if global.skill_down_attack = 0
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "7000원 주고 배워볼래? 형?"
		p_mes.target = id
		}
	}
	else
	{
		if p_mes = -1
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = "어? 이미 스킬을 배웠네 형?"
		p_mes.target = id
		scene__ = -4
		alarm[11] = 200
		alarm[6] = 200
		skiping_dilay = 1
		
		var sfx = audio_play_sound(gibungoa,0,0)
		audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
		}
	}
}

if scene__ = 31
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "아니 (D) / 그래 (F)"
	p_mes.target = player
	}
}

if scene__ = 32
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 33
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "사줘서 고마워 형! 스킬은 공중에서 S키를 눌러서 사용할 수 있어!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	}
}




if scene__ = 34
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "체력회복은 형의 체력을 +1만큼 채워줘!"
	p_mes.target = id
	}
}

if scene__ = 35
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "가격은 1000원이야! 구매할래 형?"
	p_mes.target = id
	}
}

if scene__ = 36
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "아니 (D) / 그래 (F)"
	p_mes.target = player
	}
}

if scene__ = 37
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = "알겠어 형! 다시 관심이 생기면 말 걸어줘!"
	p_mes.target = id
	scene__ = -4
	alarm[11] = 200
	alarm[6] = 200
	skiping_dilay = 1
	}
}

if scene__ = 38
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("자 형! 여기 비요뜨야! 이거 먹고 체력 채워!")
	p_mes.target = id
	scene__ = -4
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	
	instance_create_depth(x,y-5,player.depth-2,biyott)
	}
}

if global.wave = 4 && global.n_room = 1
{
	if global.rain_event = 0
	{
	player.x += (x+140 - player.x)*0.1
	global.movement_speed = -25
	global.rain_event = 1
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 39
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 6 && global.n_room = 1
{
	if global.rain_event = 1
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 2
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 40
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 10 && global.n_room = 1
{
	if global.rain_event = 2
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 4
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 41
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}

if global.wave = 10 && global.n_room = 1
{
	if global.rain_event = 3
	{
	player.x += (x+140 - player.x)*0.1
	global.rain_event = 5
	global.movement_speed = -25
	global.playing_scene = 1
	player.cannot_move = 1
	player.image_index = 0
	player.image_xscale = 1
	scene__ = 46
		if p_mes != -1
		{
		instance_destroy(p_mes)
		p_mes = -1
		}
	}
}




if scene__ = 39
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("형 밖에 비 오는거 같은데 감기 조심해 형")
	p_mes.target = id
	scene__ = -4
	alarm[11] = 420
	alarm[6] = 420
	skiping_dilay = 1
	}
}


if scene__ = 40
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("형 밖에 눈 오는거 같은데 감기 조심해 형")
	p_mes.target = id
	scene__ = -4
	alarm[11] = 420
	alarm[6] = 420
	skiping_dilay = 1
	}
}

if scene__ = 41
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("형 오늘은 왠지 느낌이 좋지 않아 형...")
	p_mes.target = id
	}
}

if scene__ = 42
{
	if p_mes = -1
	{
		if global.money >= 13000 && (global.skill_down_attack = 0 || global.skill_jump_attack = 0 || global.skill_turning_attack = 0)
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("혹시 모르니 안 배운 스킬들도 배워두는게 좋을것 같아 형!")
		p_mes.target = id
		scene__ = -4
		alarm[11] = 220
		alarm[6] = 220
		skiping_dilay = 1
		}
		else
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("그래도 형은 문제 없겠지 형?")
		p_mes.target = id
		scene__ = -4
		alarm[11] = 220
		alarm[6] = 220
		skiping_dilay = 1
		}
		
		if global.money < 13000 && global.skill_turning_attack = 0
		{
		p_mes = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes.text = choose("어 형? 아직 회전돌리기를 안 배운거야? 심지어 돈도 없고?")
		p_mes.target = id
		}
	}
}


if scene__ = 43
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("어쩔 수 없네 형....")
	p_mes.target = id
	}
}

if scene__ = 44
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("내가 스킬을 배울 수 있게 돈을 좀 보태줄게 형!")
	p_mes.target = id
	}
}

if scene__ = 45
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("이 돈 가지고 나한테 스킬을 배우도록 해! 형!")
	p_mes.target = id
	scene__ = -4
	global.money = 13000
	
	var sfx = audio_play_sound(gibungoa,0,0)
	audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	}
}



if scene__ = 46
{
player.x += (x+140 - player.x)*0.1
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아니 형!")
	p_mes.target = id
	}
}

if scene__ = 47
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("규성이한테 당한거야? 형?")
	p_mes.target = id
	}
}

if scene__ = 48
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("뭐? 규성이가 부계로 돌아왔다고?")
	p_mes.target = id
	}
}

if scene__ = 49
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("규성이는 레이저 공격과 마크 공격을 하는데")
	p_mes.target = id
	}
}

if scene__ = 50
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("레이저 공격은 구르기로 피할 수 있어 형!")
	p_mes.target = id
	}
}

if scene__ = 51
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아 형 근데!")
	p_mes.target = id
	}
}

if scene__ = 52
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("마크 공격은 구르기로는 피할 수 없어 형")
	p_mes.target = id
	}
}

if scene__ = 53
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("대신 회전돌리기 스킬을 사용해서 공격을 튕겨낼 수 있어 형!")
	p_mes.target = id
	}
}

if scene__ = 54
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("참고해주길 바래 형!")
	p_mes.target = id
	scene__ = -4
	alarm[11] = 220
	alarm[6] = 220
	skiping_dilay = 1
	}
}





if global.playing_scene = 0
{
	if point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) > 32 || player.x < test_wakchang.x-5
	{
	p_mes = -1
	}
}



if global.n_room = 1 && global.playing_scene = 1
{
global.movement_speed += (0 - global.movement_speed)*0.1
}

if global.got_wakchori = 1 && global.n_room = 0 && global.wave = 1
{
tuto_scene = -1
}


if global.got_wakchori = 1 && global.n_room = 1 && global.wave = 1
{
	if tuto_scene < 14
	{
		if tuto_scene != -4
		{
		player.cannot_move = 1
		story_talk = 1
			if global.in_building < 0.2
			{
				if global.playing_scene = 0
				{
				global.playing_scene = 1
				tuto_scene = -1
				}
			}
		}
	}
	else
	{
	story_talk = 0
	player.cannot_move = 0
	global.playing_scene = 0
	global.got_wakchori = 1
	tuto_scene = -4
	}
	
	
	if global.in_building < 0.2
	{
		if tuto_scene = -1
		{
		player.image_xscale = 1
		global.movement_speed = -16
		player.image_index = 0
		tuto_scene = 0
		}
	}
	
	if tuto_scene = 0
	{
	player.x += (x+140 - player.x)*0.1
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "형! 무사했구나!"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 1
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "그 많은 혐팬치들은 조지고 온거야 형?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 2
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "와 시킨다고 그걸 해줬구나 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 3
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "역시 형밖에 없어"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 4
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "뭐?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 5
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "갑자기 도와주기 싫어 졌다고?"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 6
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "미안해 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 7
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "대신 형이 한 웨이브를 버틸 때 마다"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 8
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "내가 조금의 도네를 해줄게 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 9
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "이제 그 돈을 가지고 새로운 스킬을 배우거나,"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 10
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "스킬을 강화를 할 수 있고"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 11
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "체력도 회복 할 수 있어 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 12
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "관심 있으면 나한테 말 걸어줘 형"
		p_mes_tuto.target = id
		}
	}
	
	if tuto_scene = 13
	{
		if p_mes_tuto = -1
		{
		p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
		p_mes_tuto.text = "그럼 잘 부탁해 형!"
		p_mes_tuto.target = id
		}
	}
}







if global.got_wakchori = 0 && global.n_room = 1
{
	if rejected = 0
	{
		if tuto_scene < 15
		{
			if tuto_scene != -4
			{
			player.cannot_move = 1
			story_talk = 1
				if global.in_building < 0.2
				{
				global.playing_scene = 1
				}
			}
		}
		else
		{
		story_talk = 0
		player.cannot_move = 0
		global.playing_scene = 0
		global.got_wakchori = 1
		tuto_scene = -4
		}
	}
	
	if global.in_building < 0.2
	{
	
		if tuto_scene = -1
		{
		player.image_xscale = 1
		global.movement_speed = -16
		tuto_scene = 0
		}
	}
	
	
	if global.in_building < 0.3 && tuto_scene != -4
	{
	
	if floor(global.movement_speed) = 0
	{
	player.image_index = 0
	}

		
		if tuto_scene = 0
		{
		player.x += (x+140 - player.x)*0.1
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "왁굳형! 왔구나!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 1
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "요즘 들어 혐팬치들의 수가 많아졌어 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 2
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그래서 말인데 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 3
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "곧 혐팬치들이 여기로 몰려올거야"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 4
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "형이 그 혐팬치들을 처리해줘 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 5
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그래 (D) / 싫어 (F)"
			p_mes_tuto.target = player
			}
		}
		
		if tuto_scene = 5.5
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "난 그런 형이라도 사랑해 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 5.75
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "혹시 마음이 바뀌면 다시 말 걸어줘"
			p_mes_tuto.target = id
			tuto_scene = -4
			alarm[8] = 200
			}
		}
		
		if tuto_scene = 6
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "아 물론 그냥 해달라는건 아니야 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 7
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "도움이 될지는 모르겠지만 형한테 이걸 줄게."
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 8
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,-999,message_)
			p_mes_tuto.t_image_alpha = 1
			p_mes_tuto.text = "왁초리"
			p_mes_tuto.sub_text = "를 획득했다!"
			p_mes_tuto.auto_destroy = 0
			p_mes_tuto.alarm[1] = 200
			alarm[7] = 250
			
			var sfx = audio_play_sound(gibungoa,0,0)
			audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
			}
		}
		
		if tuto_scene = 9
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "A키를 누르면 일반 공격을 할 수 있어 형!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 10
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "또 나한테 스킬을 배우면 스킬도 사용할 수 있어 형"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 11
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "혹여나 혐팬치들에게 둘러쌓여 도망치치 못할때는..."
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 12
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "스페이스 바 를 통해 점프하거나"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 13
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "S키를 눌러 구르기를 할 수 있어!"
			p_mes_tuto.target = id
			}
		}
		
		if tuto_scene = 14
		{
			if p_mes_tuto = -1
			{
			p_mes_tuto = instance_create_depth(x,y,player.depth-1,player_message)
			p_mes_tuto.text = "그럼 무운을 빌게 형!"
			p_mes_tuto.target = id
			}
		}
	}
}