if (instance_exists(obj_dialog)) exit;

//key check
var move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));


//apply move
move_and_collide(move_x * move_speed, move_y * move_speed, wall);

//change sprite when key is pressed/released
if(move_x != 0 || move_y != 0)
{
	if(move_x > 0) sprite_index = spr_player_walk_right;
	else if(move_x < 0) sprite_index = spr_player_walk_left;
	else if(move_y > 0) sprite_index = spr_player_walk_down;
	else sprite_index = spr_player_walk_up;
	_hor = sign(move_x) * 90;
	_ver = sign(move_y) * 90;
}
else
{
	if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
	else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}

//play attack motion
if keyboard_check_pressed(vk_space){
	var _inst = instance_create_depth(x,y,depth, obj_attack);
	_inst.image_angle = point_direction(0,0,_hor, _ver);
	_inst.damage *= damage;
}

//create dialog
/*
if (keyboard_check_pressed(vk_space)) {
	create_dialog([
	{
		name : "Test Dialog!",
		msg  : "Good!"
	}
	])
}*/