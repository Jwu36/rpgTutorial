/// @description Insert description here
// You can write your code in this editor
var _dx = 0;
var _dy = gui_h * 0.7;
var _boxw = gui_w;
var _boxh = gui_h - _dy;
var _mode = messages[current_message].mode;

draw_sprite_stretched(spr_box, 0, _dx, _dy, _boxw, _boxh);

_dx += 16;
_dy += 25;

draw_set_font(font_kr);
if(_mode == 1)draw_set_halign(fa_right);
else draw_set_halign(fa_left);
draw_set_valign(fa_middle);

var _name = messages[current_message].name;
draw_set_color(global.char_colors[$ _name]);
if(_mode == 1) draw_text(_boxw * 0.95 - _dx, _dy, _name);
else draw_text(_dx, _dy, _name);
draw_set_color(c_white);

var line = string_count("\n", draw_message) +1;
_dy += 50;
if(line > 1) _dy += 50;

if(_mode == 1) draw_text_ext(_boxw * 0.9 - _dx, _dy, draw_message, -1, _boxw - _dx * 2);
else draw_text_ext(_dx, _dy, draw_message, -1, _boxw - _dx * 2);