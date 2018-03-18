draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rotation, c_white, image_alpha);

draw_healthbar(bbox_left - 5, bbox_top - 31, bbox_right + 5, bbox_top - 27, hpPercentage,
    c_black, global.healthPink, global.healthPink, 0, false, false);
