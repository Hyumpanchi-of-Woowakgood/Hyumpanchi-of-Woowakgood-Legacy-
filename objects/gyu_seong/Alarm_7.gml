/// @description Insert description here
// You can write your code in this editor
if global.playing_scene = 0
{
	if p_mes = -1
	{
	p_mes = instance_create_depth(x,y,player.depth-1,player_message)
	p_mes.text = choose("아니 이럴땐 그렇게 해야지 뭐함 ㄹㅇ","하 진짜 쥰네 답답하네","아니 제발 그렇게 하는거 아니라고","마크마크마크마크마크마크마크마크")
	p_mes.target = id
	}
}
alarm[8] = 180