/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_shadow,0,x,366+27,1-abs(y-366)/48,1-abs(y-366)/64,0,c_white,(1-abs(y-366)/48)*0.3)

draw_self()

//체력바
hp_bar_alpha += (t_hp_bar_alpha - hp_bar_alpha)*0.1

if hp_bar_alpha > 0
{
draw_sprite_ext(sprite20,0,x-20,y+32,1,1,0,c_white,hp_bar_alpha)
	if hp/max_hp > 0
	{
	draw_sprite_ext(sprite20,1,x-18,y+32,hp/max_hp,1,0,c_white,hp_bar_alpha)
	}
}

draw_text_kl_scale(x,y-45,"샌드백 노비",16,999,image_alpha,image_blend,0,0,font0,1/3,1/3,image_angle)


//draw_set_color(c_black)
//draw_text(x,y,string(movement_speed)+" / "+string(image_index))