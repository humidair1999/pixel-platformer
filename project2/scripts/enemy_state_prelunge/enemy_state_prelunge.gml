/// @description Enemy pre-lunge state
/// enemy_state_prelunge();

// pause for random amount of time before moving to real lunge

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "preLunge";

  facing = sign(obj_player.x - x);
  if (facing == 0)
    facing = 1;

  alarm[2] = random_range(20, 40);

  with (attackBox)
    instance_destroy();
}

if (alarm[2] <= 0) {
  state_switch("Lunge");
}

if (!collision_line(x - lungeExitSight, y, x + lungeExitSight, y, obj_player, false, true) &&
    !collision_line(x - dashEnterSight, y, x + dashEnterSight, y, obj_player, false, true)) {
  state_switch("Idle");
}
else if (!collision_line(x - lungeExitSight, y, x + lungeExitSight, y, obj_player, false, true) &&
         collision_line(x - dashEnterSight, y, x + dashEnterSight, y, obj_player, false, true)) {
  state_switch("Dash");
}

if (!onGround) {
  state_switch("Air");
}
