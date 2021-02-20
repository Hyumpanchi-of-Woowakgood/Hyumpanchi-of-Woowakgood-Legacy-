/// @description Insert description here
// You can write your code in this editor
if room != room1
{
option ++
instance_create_depth(x,y,-9998,master_volume_setting)
instance_create_depth(x,y,-9999,bgm_volume_setting)
instance_create_depth(x,y,-9999,sfx_volume_setting)
instance_create_depth(x,y,-9999,full_screen_option)


	if option > 1
	{
	option = 0
	instance_destroy(master_volume_setting)
	instance_destroy(bgm_volume_setting)
	instance_destroy(sfx_volume_setting)
	instance_destroy(full_screen_option)
	}
}