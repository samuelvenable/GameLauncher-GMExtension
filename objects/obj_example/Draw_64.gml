display_set_gui_size(window_get_width(), window_get_height());
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(window_get_width() / 2, window_get_height() / 2, ((!global.pid) ? "Click to play!" : "Waiting for game to close..."));