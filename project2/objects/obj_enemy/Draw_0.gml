switch (sprite_state) {
        case "warping":
          image_speed = 1;
          sprite_index = spr_player_warp;
        break;
        
        case "idling":
          image_speed = 1;
          sprite_index = spr_player_idle;
        break;
        
        case "walking": 
          image_speed = 0.6; 
          sprite_index = spr_player_run;
        break;
        
        case "dashing": 
          image_speed = 1.4;
          sprite_index = spr_player_run;
        break;
        
        case "scattering": 
          image_speed = 1.8;
          sprite_index = spr_player_run;
        break;
        
        case "jumping":
          sprite_index = spr_player_run;
          image_speed = 0;
          image_index = 3;
        break;
        
        case "falling":
          sprite_index = spr_player_run;
					image_speed = 0;
					image_index = 6;
        break;
        
        case "preLunge":
          image_index = 6;
          image_speed  = 0;
          sprite_index = spr_player_jab;
        break;
        
        case "lunge":
          image_index = 3;
          image_speed  = 0;
          sprite_index = spr_player_jab;
        break;
        
        case "lungeAttack":
          image_index = 5;
          image_speed  = 0;
          sprite_index = spr_player_jab;
        break;
}

if (isDamaged) {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_red, image_alpha);
}
else {
  draw_sprite_ext(sprite_index, image_index, x, y, facing, 1, 0, c_white, image_alpha);
}

draw_healthbar(bbox_left - 5, bbox_top - 31, bbox_right + 5, bbox_top - 27, hp,
    c_black, global.healthPink, global.healthPink, 0, false, false);

//draw_text(bbox_left + (bboxwidth / 2), bbox_top - 75, string(pc));
