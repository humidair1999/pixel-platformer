/// @description Enemy wander state
/// enemy_state_wander();

var facing_random;

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "idling";
  alarm[1] = random_range(120, 240);
  alarm[7] = 30;

  facing_random = random_range(-10, 10);
  if (facing_random == 0)
    facing_random = 1;
  facing = sign(facing_random);
}

enemy_util_move_horizontal(vxWander, "walking");

if (alarm[1] <= 0) {
  state_switch("Idle");
}

if (alarm[7] <= 0) {
  enemy_util_check_vertical_collisions();
}

enemy_util_check_horizontal_collisions();

if (!onGround) {
  state_switch("Air");
}
