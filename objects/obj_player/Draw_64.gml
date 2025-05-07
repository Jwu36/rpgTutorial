/// @description 여기에 설명 삽입
// 이 에디터에 코드를 작성할 수 있습니다

var _dx = 16;
var _dy = 16;
var _barw = 256;
var _barh = 32;

draw_set_font(font_gui);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

//draw health bar
var _health_barw = _barw * (hp/hp_total);

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _health_barw, _barh, c_red, 0.6);

draw_text(_dx + (_barw / 2), _dy + (_barh / 2), "HP");

//draw xp bar
var _xp_barw = _barw * (xp / xp_require);
_dy += _barh + 8;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _barw, _barh);
draw_sprite_stretched_ext(spr_box, 1, _dx, _dy, _xp_barw, _barh, c_blue, 0.6);

draw_text(_dx + (_barw / 2), _dy + (_barh / 2), "LEVEL " + string(level));