/// @description Enemy check vertical collisions util
/// enemy_util_check_vertical_collisions();

if (collision_line(x, y - jumpSight, x, y, obj_player, false, true)) {
  vy = -jumpHeight;
          
  state_switch("Air");
}
else if (collision_rectangle(bbox_left - 60, y + 30, bbox_right + 60, y + fallSight, obj_player, false, true)) {
  if ((collision_line(bbox_left, bbox_bottom + 1, bbox_right, bbox_bottom + 1, obj_parent_jump_thru, false, true) &&
      !collision_line(bbox_left, bbox_bottom, bbox_right, bbox_bottom, obj_parent_jump_thru, false, true))) {
    ++y;
  }
}
