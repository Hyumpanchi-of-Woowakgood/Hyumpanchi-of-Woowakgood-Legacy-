/// @description Insert description here
// You can write your code in this editor
global.money += donated_cost+random_plus_money

var sfx = audio_play_sound(donation_sfx,0,0)
audio_sound_gain(sfx,0.83*global.master_volume*global.sfx_volume,0)