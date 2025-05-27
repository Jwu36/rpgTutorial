
move_speed = 1;

wall = layer_tilemap_get_id("Tile_Wall");

hp = 10;
hp_total = hp;
damage = 1;

level = 1;
xp = 0;
xp_require = 100;


_hor = 90;
_ver = 0;

alarm[0] = 60;

function add_xp(_xp) {
	xp += _xp;
	if (xp >= xp_require) {
		level++;
		xp -= xp_require;
		xp_require *= 1.4;
		
		hp_total += 5;
		hp = hp_total;
		damage += 0.8;
		
		create_dialog([
		{
			mode : 1,
			name : "Congrats",
			msg  : $"You leveled up! Your new stats are: \nLV: {level}\nHP {hp_total}\nDMG {damage}"
		}
		])
	}
	
}