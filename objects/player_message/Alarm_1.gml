/// @description Insert description here
// You can write your code in this editor
if text != "상호작용 (D)" && text != "들어가기 (D)" && text != "나가기 (D)"
{
	if !audio_is_playing(message_sfx)
	{
	var sfx = audio_play_sound(message_sfx,0,0)
	audio_sound_gain(sfx,0.12*global.master_volume*global.sfx_volume,0)
	}
}