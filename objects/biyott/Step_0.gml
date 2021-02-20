/// @description Insert description here
// You can write your code in this editor
gravity = 0.1

if x < player.x
{
x += (7.5 - fir_vsp)*0.7
}
else
{
x += (player.x - x)*0.1
}

if y > player.y
{
var sfx = audio_play_sound(gibungoa,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)
global.hp ++

instance_destroy()
}


image_angle -= fir_vsp