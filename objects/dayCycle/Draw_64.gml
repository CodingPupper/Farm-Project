
var c = light_color;
draw_set_alpha(darkness);
draw_rectangle_color(0,0,guiW, guiH, c, c, c, c, false);
draw_set_alpha(1);

draw_text_color(10, 50, string(seconds), c, c, c, c,1);
