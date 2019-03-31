///draw_shadow(text, x, y, color)
xx = argument1
yy = argument2
text = argument0
color = argument3

//orig_c = draw_get_color
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_text(xx+1,yy+1,text)

draw_set_color(color)
draw_set_alpha(1)
draw_text(xx, yy, text)

//draw_set_color(orig_c)
