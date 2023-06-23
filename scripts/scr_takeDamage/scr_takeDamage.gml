/// @function take_damage(amount, object);
/// @param {real} amount Amount to take
/// @param {index}  obj  Object

function take_damage(_amount, _obj) {
	_obj.hit_points -= _amount;
	_obj.state_blink = true;
	_obj.alarm[2] = _amount * 1.5;
}