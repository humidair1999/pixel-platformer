/// @description Enemy horizontal movement
/// enemy_util_move_horizontal();

var moveSpeed = argument0;
var spriteState = argument1;

var isFloorToRight = (collision_point(bbox_right + 40, bbox_bottom + 1, obj_parent_solid, false, true) ||
                  collision_point(bbox_right + 40, bbox_bottom + 1, obj_parent_jump_thru, false, true));
var isFloorToLeft = (collision_point(bbox_left - 40, bbox_bottom + 1, obj_parent_solid, false, true) ||
                 collision_point(bbox_left - 40, bbox_bottom + 1, obj_parent_jump_thru, false, true));

var isWallToRight = place_meeting(x + 40, y, obj_parent_solid);
var isWallToLeft = place_meeting(x - 40, y, obj_parent_solid);



if ((facing == 1) && isFloorToRight && !isWallToRight) {
  // Apply acceleration right
  if (vx < 0)
      vx = approach(vx, 0, groundFric);
      
  sprite_state = spriteState;

  vx = approach(vx, moveSpeed, groundAccel);
}
else if ((facing == -1) && isFloorToLeft && !isWallToLeft) {
  // Apply acceleration left
  if (vx > 0)
      vx = approach(vx, 0, groundFric);
      
  sprite_state = spriteState;

  vx = approach(vx, -moveSpeed, groundAccel);
}
else {
  state_switch("Idle");
}
