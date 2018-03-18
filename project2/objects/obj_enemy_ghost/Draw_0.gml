switch (spriteState) {
  case "warping":
    image_speed = 1;
    sprite_index = spr_ghost_warp;
  break;

  case "idling":
    image_speed = 1;
    sprite_index = spr_ghost_idle;
  break;
}

if (isDamaged) {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_red, image_alpha);
}
else {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, image_alpha);
}

draw_healthbar(bbox_left + 2, bbox_top - 28, bbox_right - 2, bbox_top - 24,
    hp, c_black, global.healthPink, global.healthPink, 0, false, false);
