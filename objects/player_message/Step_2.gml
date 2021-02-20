/// @description Insert description here
// You can write your code in this editor
if text = "상호작용 (D)" || text = "들어가기 (D)" || text = "나가기 (D)"
{
	if global.n_room = 0
	{
		if point_distance(daepiso.x,903,player.x,player.y) > 32 
		{
		des = 1
		}
	}
	else
	{
		if point_distance(out_daepiso.x,366,player.x,player.y) > 32 && (point_distance(test_wakchang.x,test_wakchang.y,player.x,player.y) > 32 || player.x < test_wakchang.x-5) && (point_distance(test_sandbag.x,test_sandbag.y,player.x,player.y) > 32 || player.x > test_sandbag.x+10)
		{
		des = 1
		}
	}
	
	if global.playing_scene = 1
	{
	des = 1
	}


	if player.entering_daepiso != 0
	{
	des = 1
	}
}