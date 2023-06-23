// stun?
// set alarm?
//direction = direction - 180;
move_bounce_solid(true);
speed /= 2;
state_stunned = true;
alarm_set(0, 25 * speed);
