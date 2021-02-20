/// @description Insert description here
// You can write your code in this editor
image_angle += angle_plus*2

if y > 903
{
instance_destroy()
}

if place_meeting(x,y,effect)
{
vspeed = -4
hspeed = choose(-4,4)
}

hspeed += (0 - hspeed)*0.01

ef++
if ef > 1
{
var effect__ = instance_create_depth(x,y,depth+1,minecraft_effect)
effect__.image_angle = image_angle
ef = 0
}