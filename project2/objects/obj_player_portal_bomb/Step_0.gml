vy = approach(vy, vyMax, gravNorm);

if (facing < 0) {
  vx = approach(vx, -vxMax, tempAccel);
}
else {
  vx = approach(vx, vxMax, tempAccel);
}






with (obj_parent_solid) {
  if (place_meeting(x, y, other)) {
    with (other) {
      instance_destroy();
    }
  }
}






with (obj_enemy) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 1000;

      isDamaged = true;

      with (other) {
        ds_list_add(collisionList, id);
        
        instance_destroy();
      }
    }
  }
}

with (obj_enemy_ghost) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 1000;

      isDamaged = true;

      with (other) {
        ds_list_add(collisionList, id);
        
        instance_destroy();
      }
    }
  }
}






with (obj_portal) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 200;

      //isDamaged = true;

      with (other) {
        ds_list_add(collisionList, id);
        
        instance_destroy();
      }
    }
  }
}
