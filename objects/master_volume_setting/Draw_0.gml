/// @description Insert description here
// You can write your code in this editor

var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-120
var yy = camera_get_view_y(view_camera[0])+120

draw_set_alpha(1)
draw_set_color(c_gray)
draw_rectangle(xx-150,yy,xx+450,yy+198,0)

draw_set_alpha(1)
draw_set_color(c_black)
draw_rectangle(xx-150,yy,xx+450,yy+198,1)
draw_rectangle(xx-151,yy-1,xx+451,yy+199,1)



var xx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.5-100
var yy = camera_get_view_y(view_camera[0])+160
draw_sprite_ext(sprite_index,1,xx,yy,1,1,0,c_white,1)
draw_sprite_ext(sprite_index,0,xx+global.master_volume*200,yy,1,1,0,c_white,1)

draw_text_kl_scale(xx+220,yy,"마스터 볼륨 "+string(global.master_volume*100)+"%",16,999,image_alpha,image_blend,0,-1,font0,1/2,1/2,image_angle)