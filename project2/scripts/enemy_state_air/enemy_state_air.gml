/// @description Enemy is in the air
/// enemy_state_air();

if (state_new) {
  vx = 0;
  
  with (attackBox)
    instance_destroy();
}

if (vy <= 0) {
  sprite_state = "jumping";
}
else {
  sprite_state = "falling";
}

vy = approach(vy, vyMax, gravNorm);

if (onGround) {
  state_switch("Idle");
}
