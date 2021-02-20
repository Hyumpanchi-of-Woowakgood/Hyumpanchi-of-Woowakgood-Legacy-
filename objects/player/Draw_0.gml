/// @description Insert description here
// You can write your code in this editor

for(var i = 0; i < 64; i++)
{
	if place_meeting(x,y+i,obj_floor)
	{
	draw_sprite_ext(spr_shadow,0,x,global.p_floor+27,1-abs(y-global.p_floor)/48,1-abs(y-global.p_floor)/64,0,c_white,(1-abs(y-global.p_floor)/48)*0.3*image_alpha)
	break;
	}
}



draw_self()
//draw_set_color(c_black)
//draw_text(x,y,string(down_attack)+" / "+string(image_index))


//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(y))