// Draw the shadow underneath to represent the fake z-axis.

draw_sprite_ext(sprite_index, -1, x, y + z_axis, 1, 1, image_angle, c_black, 0.5);
draw_self();
