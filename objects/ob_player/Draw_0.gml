draw_sprite(sprite_index, image_index, x, y);

draw_sprite(sp_player_hp_bar_bg, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(sp_player_hp, 0, healthbar_x, healthbar_y, (hp/hp_max) * healthbar_width, healthbar_height);
draw_sprite(sp_player_hp_bar, 0, healthbar_x, healthbar_y);
