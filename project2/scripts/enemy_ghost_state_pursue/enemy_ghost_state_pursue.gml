/// @description Ghost enemy pursue state

if (state_new) {
  vx = 0;
  vy = 0;
  spriteState = "idling";

  alarm[1] = random_range(120, 240);
}

/*
vx = approach(vx, vxMax, airAccel);
vy = approach(vx, vyMax, airAccel);
*/

facing = sign(obj_player.x - x);
if (facing == 0)
    facing = 1;

var dir = point_direction(x, y, obj_player.x, obj_player.y);

vx = lengthdir_x(vxMax, dir);
vy = lengthdir_y(vyMax, dir);

if (place_meeting(x, y, obj_player) || alarm[1] <= 0) {
  state_switch("Idle");
}
