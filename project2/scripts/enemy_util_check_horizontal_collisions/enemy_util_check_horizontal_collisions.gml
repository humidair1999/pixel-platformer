/// @description Enemy check horizontal collisions util
/// enemy_util_check_horizontal_collisions();

// switch to lunge
if (collision_line(x - lungeEnterSight, y, x + lungeEnterSight, y, obj_player, false, true)) {
  state_switch("Prelunge");
}
// switch to dash
else if (collision_line(x - dashEnterSight, y, x + dashEnterSight, y, obj_player, false, true)) {
  state_switch("Dash");
}
