/// @description Insert description here
// You can write your code in this editor
image_alpha += (t_image_alpha - image_alpha)*0.06

if auto_destroy = 1
{
	if player.entering_daepiso > 0
	{
	t_image_alpha -= 0.05
	}
}

if wipe > 0
{
t_image_alpha -= 0.05
}

if image_alpha <= 0
{
instance_destroy()
}

if global.playing_scene = 1
{
instance_destroy()
}