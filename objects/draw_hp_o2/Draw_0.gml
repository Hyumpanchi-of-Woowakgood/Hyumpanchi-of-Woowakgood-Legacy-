
if instance_number(code) > 0 && room != room1 && global.playing_scene = 0
{
var cm_vx = obj_camera.v_x/1280
var xx_ = camera_get_view_x(view_camera[0])
var xxx = xx_ + (cm_vx)*16
var yyy = camera_get_view_y(view_camera[0]);

var yy_ = camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])


//하트갯수 드로우
//draw_text_kl_scale(xxx+x_plus*5,yyy+yy*0.5,"Life : "+string(floor((global.hp-1)*10))+" / "+string(floor((global.max_hp-1)*10)),((obj_camera.v_x/1280)*1.5)*25,-1,1,c_white,0,0,ko_80,(obj_camera.v_x/1280)*0.25*0.025*25,(obj_camera.v_y/720)*0.25*0.025*25,0)
//산소갯수 드로우
//draw_text_kl_scale(xxx+x_plus*5,yyy+yy*2.2,"Oxygen : "+string(floor((global.o2-1)*10))+" / "+string(floor((global.max_o2-1)*10)),((obj_camera.v_x/1280)*1.5)*25,-1,1,c_white,0,0,ko_80,(obj_camera.v_x/1280)*0.25*0.025*25,(obj_camera.v_y/720)*0.25*0.025*25,0)


var image_size = 1.25

var return_num = 0
if global.hp <= 11
{
	for(var i = 0; i < global.hp; i += 0.01)
	{
	return_num ++
	draw_sprite_ext(sprite_index,image_index,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-return_num)
	var injured_effect = code.injured_effect
		if injured_effect%2 = 1
		{
			if instance_number(player) > 0
			{
			draw_sprite_ext(sprite_index,image_index+1,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-return_num)
			}
		}
	}
}

if global.hp > 11 && global.hp <= 21
{
	for(var i = 1; i < 11; i += 1)
	{
	draw_sprite_ext(sprite_index,image_index,xxx+x_plus*(i),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,1)
	}
	
	for(var i = 0; i < global.hp-10; i += 0.01)
	{
	return_num ++
	draw_sprite_ext(sprite_index,6,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-10-return_num)
	var injured_effect = code.injured_effect
		if injured_effect%2 = 1
		{
			if instance_number(player) > 0
			{
			draw_sprite_ext(sprite_index,6+1,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-10-return_num)
			}
		}
	}
}

if global.hp > 21
{
	for(var i = 1; i < 11; i += 1)
	{
	draw_sprite_ext(sprite_index,6,xxx+x_plus*(i),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,1)
	}
	
	for(var i = 0; i < global.hp-20; i += 0.01)
	{
	return_num ++
	draw_sprite_ext(sprite_index,9,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-20-return_num)
	var injured_effect = code.injured_effect
		if injured_effect%2 = 1
		{
			if instance_number(player) > 0
			{
			draw_sprite_ext(sprite_index,9+1,xxx+x_plus*(return_num),yyy+yy*1.5,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.hp-20-return_num)
			}
		}
	}
}







var image_size = 1.75

var return_num = 0
	for(var i = 0; i < global.stemina; i += 0.01)
	{
	return_num ++
	draw_sprite_ext(sprite_index,3,xxx+x_plus*(return_num*0.75),yyy+yy*3,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.stemina-return_num)
	var injured_effect = global.stemina_cooltime
		if global.stemina_cooltime >= 300 && global.stemina < 11
		{
			if injured_effect%2 = 1
			{
				if instance_number(player) > 0
				{
				draw_sprite_ext(sprite_index,4,xxx+x_plus*(return_num*0.75),yyy+yy*3,image_xscale/image_size,image_yscale/image_size,image_angle,c_white,global.stemina-return_num)
				}
			}
		}
	}
}





