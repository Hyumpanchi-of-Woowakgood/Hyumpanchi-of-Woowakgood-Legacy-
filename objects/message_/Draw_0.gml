/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])+160

for(var i = 0; i < 8; i ++)
{
draw_set_color(c_black)
draw_set_alpha(image_alpha*0.16)
draw_rectangle(xx,yy+i*3,xx+camera_get_view_width(view_camera[0]),yy+150-i*3,0)
draw_set_alpha(1)
}

if text != "왁초리"
{
draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+58,text,32,-1,image_alpha,c_white,0,0,font0,2/3,2/3,0)

draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+92,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3,1/3,0)
}
else
{
draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+28,text,32,-1,image_alpha,c_white,0,0,font0,2/3,2/3,0)

draw_sprite_ext(sprite41,0,xx+camera_get_view_width(view_camera[0])*0.5-8,yy+68,0.8,0.8,60,c_white,image_alpha)

draw_text_kl_scale(xx+camera_get_view_width(view_camera[0])*0.5,yy+112,sub_text,32,-1,image_alpha,c_white,0,0,font0,1/3,1/3,0)
}