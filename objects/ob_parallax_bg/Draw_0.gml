var _camx = camera_get_view_x(view_camera[0]);
var _camy = camera_get_view_y(view_camera[0]);

var _p = 1;

draw_sprite_tiled(sp_bg_forest, 0, _camx * 1, _camy * 1);
draw_sprite_tiled(sp_bg_forest, 1, _camx * .8, _camy * .8);
draw_sprite_tiled(sp_bg_forest, 2, _camx * .6, _camy * .6);
draw_sprite_tiled(sp_bg_forest, 3, _camx * .4, _camy * .4);
draw_sprite_tiled(sp_bg_forest, 4, _camx * .2, _camy * .2);

