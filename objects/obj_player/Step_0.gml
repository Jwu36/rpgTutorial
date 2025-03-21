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
	else sprite_index = spr_player_walk_up
}
else
{
	if(sprite_index == spr_player_walk_right) sprite_index = spr_player_idle_right;
	else if(sprite_index == spr_player_walk_left) sprite_index = spr_player_idle_left;
	else if(sprite_index == spr_player_walk_up) sprite_index = spr_player_idle_up;
	else if(sprite_index == spr_player_walk_down) sprite_index = spr_player_idle_down;
}
	