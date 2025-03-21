//set move

var move_x = clamp(target_x - x, -1, 1);
var move_y = clamp(target_y - y, -1, 1);

move_and_collide(move_x * move_speed, move_y * move_speed, wall);