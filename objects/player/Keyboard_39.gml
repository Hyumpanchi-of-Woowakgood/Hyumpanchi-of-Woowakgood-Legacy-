/// @description Insert description here
// You can write your code in this editor
	if pressed_d_key != 1 && attack_ = 0
	{
	global.movement_speed = global.movement_speed/4
	}
pressed_d_key = 1

if place_meeting(x,y+1,obj_floor)
{
	if pressed_d_key+pressed_a_key != 0 && cannot_move = 0
	{
		if global.movement_speed < 6
		{
		global.movement_speed += 0.12
			if global.movement_speed > 0
			{
			global.movement_speed += global.movement_speed*0.05
			}
		}
		else
		{
		global.movement_speed = 4.4
		}
	}
}