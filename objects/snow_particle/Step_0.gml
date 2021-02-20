/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var xx = camera_get_view_x(view_camera[0])
var yy = camera_get_view_y(view_camera[0])
var xxx = camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])


depth = obj_camera.depth+10





	
if global.rainy > 0
{
	if alpha < 1
	{
	alpha += 0.02
	}
	
	if global.rainy = 1 && !audio_is_playing(rain_sound_effect)
	{
	sfx = audio_play_sound(rain_sound_effect,0,0)
	}
}
else
{
	if alpha > 0
	{
	alpha -= 0.02
	}
	else
	{
		if sfx != -1
		{
		audio_stop_sound(sfx)
		sfx = -1
		}
	}
}


if sfx != -1
{
audio_sound_gain(sfx,alpha*0.3*global.master_volume*global.sfx_volume,0)
}



depth = -(room_width*3)


if global.rainy = 1 && alpha > 0 && global.n_room = 0
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성


part_type_sprite(particle1,spr_rain,0,0,true)


part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.2*3,0.8*3,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,alpha,0);//파티클의 투명도(변화)

part_type_speed(particle1,6.7*3,13*3,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+global.wind_dir,270+global.wind_dir,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,90,90,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성
var camera_yscale = obj_camera.v_y

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(65+((global.snowflake_amount)*100)*0.2)
if random_var = 1
{
	for(var i = 0; i < (global.snow_effect_distance)*0.1+1; i++)
	{
	part_particles_create(emitter1,irandom_range(xx-global.snow_effect_distance*100,xxx+global.snow_effect_distance*100),(yy-camera_yscale/18)-global.snow_effect_distance*50,particle1,1)
	}
}


	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}




if global.rainy = 2 && alpha > 0 && global.n_room = 0
{
var snow = part_system_create();

var particle1 = part_type_create();//파티클 타입 생성


part_type_sprite(particle1,spr_snow_flake,0,0,true)



part_type_life(particle1,500,900);//파티클의 수명(랜덤)
part_type_size(particle1,0.1*3,0.8*3,0,0);//파티클의 크기(랜덤)
part_type_color1(particle1,c_white);//파티클의 색(1가지색)
part_type_alpha2(particle1,alpha,0);//파티클의 투명도(변화)

part_type_speed(particle1,1*3,2*3,0,0);//파티클의 속도(랜덤)
part_type_direction(particle1,270+global.wind_dir,270+global.wind_dir,0,0);//파티클의 방향(중력 방향)
part_type_orientation(particle1,0,360,0,0,1);//파티클 이미지 방향
//part_type_shape(particle1,shape);//파티클의 종류

var emitter1 = part_emitter_create(snow);//파티클 이미터 생성
var camera_yscale = obj_camera.v_y

//part_emitter_region(snow,emitter1,xx-10,xx+camera_xscale+10,yy-10,yy-10,ps_shape_line,ps_distr_linear);//생성 범위
//part_emitter_stream(snow,emitter1,particle1,1);//파티클 생성
//part_particles_create(emitter1,xx,yy,particle1,-2);//파티클 이미터 생성

part_system_draw_order(snow,1);//파티클 생성시 표시 순서


var random_var = percentage_k(50+((global.snowflake_amount)*100)*0.2)
if random_var = 1
{
	for(var i = 0; i < (global.snow_effect_distance)*0.1+1; i++)
	{
	part_particles_create(emitter1,irandom_range(xx-global.snow_effect_distance*100,xxx+global.snow_effect_distance*100),(yy-camera_yscale/18)-global.snow_effect_distance*50,particle1,1)
	}
}


	if instance_number(player) > 0
	{
	x = player.x
	y = player.y
	}
}

