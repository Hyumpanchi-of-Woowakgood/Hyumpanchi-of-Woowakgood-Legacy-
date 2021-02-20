/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_width(view_camera[0])
var yyy = camera_get_view_height(view_camera[0])

if global.playing_scene > 0
{
	if global.playing_scene_black_bg < 125
	{
	global.playing_scene_black_bg ++
	}
global.playing_scene_black_bg += (125 - global.playing_scene_black_bg)*0.01
}
else
{
	if global.playing_scene_black_bg > 0
	{
	global.playing_scene_black_bg --
	}
global.playing_scene_black_bg += (-1 - global.playing_scene_black_bg)*0.01
}

if global.playing_scene_black_bg > 0
{
draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(xx,yy,xx+xxx,yy+global.playing_scene_black_bg*obj_camera.v_y/720,0)
draw_rectangle(xx,yy+yyy,xx+xxx,yy+yyy-global.playing_scene_black_bg*obj_camera.v_y/720,0)
}
