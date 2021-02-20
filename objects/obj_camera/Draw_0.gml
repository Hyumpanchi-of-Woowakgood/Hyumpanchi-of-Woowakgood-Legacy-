/// @description Insert description here
// You can write your code in this editor
if global.w_alpha > 0 && global.revived = 0
{
global.w_alpha -= 0.15
}

if global.w_alpha < 0
{
global.w_alpha = 0
}

draw_set_color(c_white)
draw_set_alpha(global.w_alpha)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)

draw_set_color(c_white)
draw_set_alpha(global.revived)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


draw_set_color(c_black)
draw_set_alpha(global.in_building)
draw_rectangle(0,0,room_width,room_height,0)
draw_set_alpha(1)


if instance_number(test_wakchang) > 0
{
	if test_wakchang.tip_alpha > 0
	{
	var xx = camera_get_view_x(view_camera[0])
	var yy = camera_get_view_y(view_camera[0])
	var xxx = camera_get_view_width(view_camera[0])
	var yyy = camera_get_view_height(view_camera[0])

	draw_text_kl_scale(xx+xxx-50,yy+yyy-32,"* D키를 눌러 다음 대사로 넘길수 있습니다",16,99999,test_wakchang.tip_alpha,c_white,1,1,font01,1/9,1/9,0)
	}
}

if global.playing_scene = 0
{
	if instance_number(test_wakchang) > 0
	{
	test_wakchang.tip_alpha = -10
	}
}