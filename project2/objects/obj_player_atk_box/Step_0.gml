with (obj_parent_crate) {
  if (place_meeting(x, y, other)) {
    instance_destroy();
  }
}

with (obj_portal) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 200;

      //isDamaged = true;

      ds_list_add(other.collisionList, id);
    }
  }
}

with (obj_enemy) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 30;

      isDamaged = true;

      ds_list_add(other.collisionList, id);
    }
  }
}

with (obj_enemy_ghost) {
  if (place_meeting(x, y, other)) {
    if (ds_list_find_index(other.collisionList, id) == -1) {
      hp -= 50;

      isDamaged = true;

      ds_list_add(other.collisionList, id);
    }
  }
}
