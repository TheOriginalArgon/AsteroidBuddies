// Speed limiting.
if speed > 2 {
	speed = 2;
}
if speed <= 0 {
	speed = 0;
}


// MOVEMENT.

if !state_stunned {
	// Rotation.

	if keyboard_check(ctrl_rotate_cw) {
		image_angle -= global.player_rotating_amount;
	}
	if keyboard_check(ctrl_rotate_ccw) {
		image_angle += global.player_rotating_amount;
	}

	// Acceleration.

	if keyboard_check(ctrl_accelerate) and place_free(x + lengthdir_x(2, image_angle + 90), y + lengthdir_y(2, image_angle + 90)) {
		speed += 0.5;
		direction = image_angle + 90;
	}
	if keyboard_check(ctrl_brake) and speed > 0 {
		speed -= 0.05;
	}

// FIRING.

	if state_canFire {
		if keyboard_check_pressed(ctrl_fireMain) {
			audio_play_sound(snd_laserSmall, 10, false);
			instance_create_depth(x, y, -150, obj_bulletBasic, {
				owner_id : id,
				lifetime : 20,
				speed : 4.15 + speed,
				direction : image_angle + 90,
				z_axis : 8
			});
			state_canFire = false;
			alarm_set(1, global.player_fire_cooldown_base);
		}
	}
}