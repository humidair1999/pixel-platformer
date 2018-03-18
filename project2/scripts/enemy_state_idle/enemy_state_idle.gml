/// @description Enemy idle state
/// enemy_state_idle();

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "idling";
  alarm[0] = random_range(20, 60);
  alarm[7] = 30;
}

if (alarm[0] <= 0) {
  state_switch("Wander");
}

if (alarm[7] <= 0) {
  enemy_util_check_vertical_collisions();
}

enemy_util_check_horizontal_collisions();

if (!onGround) {
  state_switch("Air");
}
