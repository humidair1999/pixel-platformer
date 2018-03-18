/// @description Ghost enemy idle state

if (state_new) {
  vx = 0;
  vy = 0;
  spriteState = "idling";
  alarm[0] = random_range(20, 60);
}

if (alarm[0] <= 0) {
  state_switch("Pursue");
}
