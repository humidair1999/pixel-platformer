/// @description Ghost enemy scatter state

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "idling";

  facing = sign(obj_player.x - x) * -1;
  if (facing == 0)
    facing = 1;

  alarm[5] = random_range(20, 50);
}

if (facing == 1) {
  vx = approach(vx, vxMaxScatter, airAccel);
  vy = approach(vx, -vyMaxScatter, airAccel);
}
else {
  vx = approach(vx, -vxMaxScatter, airAccel);
  vy = approach(vx, -vyMaxScatter, airAccel);
}



if (alarm[5] <= 0) {
  state_switch("Idle");
}
