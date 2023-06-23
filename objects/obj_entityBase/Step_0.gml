// Destroy when no more health.

if hit_points <= 0 {
	instance_destroy(id, true);
}