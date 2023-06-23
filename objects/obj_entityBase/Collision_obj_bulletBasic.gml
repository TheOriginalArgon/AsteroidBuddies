if other.owner_id != id {
	take_damage(2, id);
	instance_destroy(other, true);
}