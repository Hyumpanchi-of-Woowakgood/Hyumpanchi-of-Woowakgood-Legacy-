/// @description Insert description here
// You can write your code in this editor
//draw_set_color(c_black)
//draw_set_font(font0)
//draw_set_alpha(1)
//draw_text(x,y-32,string(attack_paturn*100))
draw_sprite_ext(spr_shadow,0,x,903+27,1-abs(y-903)/48,1-abs(y-903)/64,0,c_white,(1-abs(y-903)/48)*0.3)

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



