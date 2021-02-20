function hp_minus_for_player(argument0) {
	var random_val = choose(0,0,0,1)
	if random_val = 1
	{
	var random_plus_damage = choose(0,0,0,0,0,0,1)
	}
	else
	{
	var random_plus_damage = 0
	}
	global.hp -= (argument0+random_plus_damage)/player.armored_level
	var d_ef = instance_create_depth(player.x,player.y,depth-1,draw_hp_m)
	d_ef.d_text = argument0+random_plus_damage

	if global.hp != code.before_hp
	{
	code.injured_effect = 1
	code.before_hp = global.hp
	}

	if argument0+random_plus_damage <= argument0
	{
	d_ef.image_blend = $FF1E9DFF
	}
	else
	{
	d_ef.image_blend = $FF6D19FF
	}


}
