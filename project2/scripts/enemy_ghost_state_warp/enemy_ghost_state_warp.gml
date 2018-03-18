/// @description Ghost enemy warp state

if (state_new) {
  vx = 0;
  vy = 0;
  spriteState = "warping";
  alarm[11] = 120;
}

if (alarm[11] <= 0) {
  state_switch("Idle");
}
