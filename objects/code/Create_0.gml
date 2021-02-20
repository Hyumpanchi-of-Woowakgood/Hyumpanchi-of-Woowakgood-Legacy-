/// @description Insert description here
// You can write your code in this editor
if instance_number(code) > 1
{
instance_destroy()
}

global.rainy = 0
global.master_volume = 1
global.bgm_volume = 1
global.wind_dir = 0
global.t_wind_dir = 0
global.snowflake_amount = 0
global.snow_effect_distance = 0
revive_c = 0
global.w_alpha = 0
global.revived = 0
global.rain_event = 2
global.origin_bgm_volume = 1
global.sfx_volume = 1
global.hp = 4
before_hp = global.hp
injured_effect = 0
global.ready_for_the_next_wave = 1
global.killed_wakchang = 0
global.in_building = 0
global.t_in_building = 0
global.p_floor = 0
global.light_scaling = 1
global.full_screen = 0
light_scaling_ = 0
light_scaling_time = 0
global.money = 0

global.stemina = 11
global.stemina_cooltime = 0

global.skill_jump_attack = 4
global.skill_turning_attack = 4
global.skill_down_attack = 4

in_building_sound_down = 0

global.wave = 10
global.left_enemy = 0
global.n_room = 0
global.wave_start = 0

global.got_wakchori = 1
global.playing_scene = 0
global.playing_scene_black_bg = 0
global.gyu_seong_wave = 0

mob_create_cooltime = 0
max_mob_create_cooltime = 0
option = 0