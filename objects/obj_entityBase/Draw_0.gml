// Inherit the parent event
event_inherited();

if state_blink {
	shader_set(shd_blinkWhite);
	draw_sprite_ext(sprite_index, -1, x, y, 1.05, 1.05, image_angle, c_white, 1);
	shader_reset();
}