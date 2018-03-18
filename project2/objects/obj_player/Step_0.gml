// Input //////////////////////////////////////////////////////////////////////

kLeft        = keyboard_check(vk_left);
kRight       = keyboard_check(vk_right);
kUp          = keyboard_check(vk_up);
kDown        = keyboard_check(vk_down);

kJump        = keyboard_check_pressed(ord("C"));
kJumpRelease = keyboard_check_released(ord("C"));

kAction      = keyboard_check_pressed(ord("X"));
kDodge       = keyboard_check_pressed(ord("Z"));

// Movement ///////////////////////////////////////////////////////////////////





canDodge = alarm[1] <= 0;

canAttack = alarm[2] <= 0;






// Enemy damage player
with (obj_enemy_atk_box) {
  if (place_meeting(x, y, other)) {
    if (other.state_name != "Dodge" && !other.isDamaged && ds_list_find_index(collisionList, id) == -1) {
      with (other) {
        hp -= 1;

        isDamaged = true;
        alarm[0] = damagedCooldown;
      }

      ds_list_add(collisionList, id);
    }
  }
}

with (obj_enemy_ghost) {
  if (place_meeting(x, y, other)) {
    if (other.state_name != "Dodge" && !other.isDamaged && ds_list_find_index(collisionList, id) == -1) {
      with (other) {
        hp -= 1;

        isDamaged = true;
        alarm[0] = damagedCooldown;
      }

      ds_list_add(collisionList, id);

      alarm[7] = collisionCooldown;
    }
  }
}




if (isDamaged && alarm[0] <= 0) {
  isDamaged = false;
}








/*
with (obj_portal_shard) {
  if (place_meeting(x, y, other)) {
    instance_destroy();
    
    global.gemsGrabbed += 1;
  }
}
*/





with (obj_portal_bomb) {
  if (place_meeting(x, y, other)) {
    instance_destroy();
    
    with (other) {
      hasBomb = true;
    }
  }
}







state_execute();
