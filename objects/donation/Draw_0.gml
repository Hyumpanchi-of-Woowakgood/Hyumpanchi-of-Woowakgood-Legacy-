/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])+random_x
var yy = camera_get_view_y(view_camera[0])+random_y

draw_text_kl_scale(xx,yy-45,"왁창",16,999,image_alpha,$FFBACC35,0,0,font0,1/3,1/3,image_angle)
draw_text_kl_scale(xx+32,yy-45,"님이",16,999,image_alpha,c_white,0,0,font0,1/3,1/3,image_angle)
draw_text_kl_scale(xx+64,yy-45,string(donated_cost+random_plus_money),16,999,image_alpha,$FFBACC35,0,0,font0,1/3,1/3,image_angle)
draw_text_kl_scale(xx+110,yy-45,"원 조공",16,999,image_alpha,c_white,0,0,font0,1/3,1/3,image_angle)
draw_text_kl_scale(xx+64,yy-10,string(random_dona_text),16,999,image_alpha,c_white,0,0,font0,1/2,1/2,image_angle)