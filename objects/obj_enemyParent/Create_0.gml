//target position
target_x = x;
target_y = y;

//set timer
alarm[0] = 60;
alarm[1] = 20;


//wall collision
wall = layer_tilemap_get_id("Tile_Wall");

//knock back
kb_x = 0;
kb_y = 0;

xp_value = 30;