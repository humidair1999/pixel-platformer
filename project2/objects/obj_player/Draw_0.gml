// Draw sprite depending on player state

switch (sprite_state) {
  case "idling":
    image_speed = 1;
    sprite_index = spr_knight_idle;
  break;

  case "walking":
    image_speed = 1;
    sprite_index = spr_knight_run;
  break;

  case "jumping":
    sprite_index = spr_knight_jump;
    image_speed = 0;
  break;

  case "falling":
    sprite_index = spr_knight_fall;
    image_speed = 0;
  break;

  case "dodging":
    image_speed = 1;
    sprite_index = spr_knight_dodge;
  break;

  case "attackingOne":
    image_speed  = 1;
    sprite_index = spr_knight_attack_one;
  break;
  
  case "attackingTwo":
    image_speed  = 1;
    sprite_index = spr_knight_attack_two;
  break;
  
  case "attackingThree":
    image_speed  = 1;
    sprite_index = spr_knight_attack_three;
  break;

  case "damaged":
    sprite_index = spr_knight_idle;
    image_speed = 0;
    image_index = 0;
  break;
}


// Draw player

if (isDamaged) {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_red, image_alpha);
}
else {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, image_alpha);
}

if (hasBomb) {
  draw_sprite_ext(spr_portal_bomb, 0, bbox_left + 5, bbox_top - 30, 1, 1, 0, c_white, 1);
}
