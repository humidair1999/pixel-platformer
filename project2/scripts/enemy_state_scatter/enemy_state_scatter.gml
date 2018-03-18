/// @description Enemy scatter state
/// enemy_state_scatter();

var facing_random;

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "idling";

  facing_random = random_range(-10, 10);
  if (facing_random == 0)
    facing_random = 1;
  facing = sign(facing_random);

  alarm[5] = random_range(30, 90);

  with (attackBox)
    instance_destroy();
}

enemy_util_move_horizontal(vxScatter, "scattering");

if (alarm[5] <= 0) {
  state_switch("Idle");
}

if (!onGround) {
  state_switch("Air");
}
