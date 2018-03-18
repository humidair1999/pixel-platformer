/// @description Enemy dash state
/// enemy_state_dash();

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "idling";
  alarm[4] = random_range(20, 40);

  facing = sign(obj_player.x - x);
  if (facing == 0)
    facing = 1;
}

if (alarm[4] <= 0) {
  enemy_util_move_horizontal(vxDash, "dashing");
}

// switch to lunge
if (collision_line(x - lungeEnterSight, y, x + lungeEnterSight, y, obj_player, false, true)) {
  state_switch("Prelunge");
}
else if (!collision_line(x - dashExitSight, y, x + dashExitSight, y, obj_player, false, true)) {
  state_switch("Idle");
}

if (!onGround) {
  state_switch("Air");
}
