/// @description Insert description here
// You can write your code in this editor
self_scaling = 1
scaling_time = 0
length_laser = 0

image_alpha = 1

var sfx = audio_play_sound(laser_keep_sfx,0,0)
audio_sound_gain(sfx,0.3*global.master_volume*global.sfx_volume,0)