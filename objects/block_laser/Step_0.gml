/// @description Insert description here



depth = player.depth-1

scaling_time ++

if scaling_time > 33
{
self_scaling += 0.004
}
else
{
self_scaling -= 0.004
}

if scaling_time >= 66
{
scaling_time = 0
}

depth = -(y2+10)


image_xscale = width*0.4
image_yscale = width*0.55


var max_length = 700
for(var i = 0; i < max_length; i += 0.1)
{
x2 = x + lengthdir_x(i,direction)
y2 = y + lengthdir_y(i,direction)

length_laser = i

	if collision_point(x2,y2,obj_floor,true,0)
	{
	break;
	}

	
	
	if (instance_number(player) > 0 && collision_point(x2,y2,player,true,0))
	{
		if player.hurt = 0 && player.spin = 0 && player.sprite_index != pl_hurt
		{
		player.hurt = 1
		player.cannot_move = 1
		global.movement_speed = -player.image_xscale*32

		var sfx = audio_play_sound(choose(hit_sfx1,hit_sfx2,hit_sfx3),0,0)
		audio_sound_gain(sfx,0.2*global.master_volume*global.sfx_volume,0)
	
		hp_minus_for_player(4)
		}
	}
}








