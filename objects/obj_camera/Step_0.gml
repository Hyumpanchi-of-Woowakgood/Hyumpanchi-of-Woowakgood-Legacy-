/// @description Insert description here
// You can write your code in this editor
depth = -9999

if instance_number(player) > 0
{
x += (player.x - x)*0.23
}

if t_x != -4
{
x += (t_x - x)*0.33
}


if instance_number(player) > 0
{
y += (player.y - y)*0.23
}

if t_y != -4
{
y += (t_y - y)*0.33
}

x = floor(x)
y = floor(y)


v_x += (tv_x - v_x)*0.02;
v_y += (tv_y - v_y)*0.02;

camera_set_view_size(view_camera[0],floor(v_x),floor(v_y));

if view_smaller > 0
{
tv_x -= view_smaller*1.28
tv_y -= view_smaller*0.72
}