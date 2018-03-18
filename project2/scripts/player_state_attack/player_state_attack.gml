/// @description Player attack state
/// player_state_attack();

if (state_new) {
  vx = 0;
  vy = 0;
  image_index = 0;
  sprite_state = "attackingOne";
  //stamina -= attackStaminaCost;

  hasExecutedAttackOne = false;
}

if (sprite_index == spr_knight_attack_one &&
    round(image_index) == 2 &&
    !instance_exists(attackBox) &&
    !hasExecutedAttackOne) {
  //show_message("3");

  attackBox = instance_create_layer(x + (45 * facing), y, "PlayerLayer", obj_player_atk_box);

  with (attackBox) {
    image_xscale = 0.7;
    image_yscale = 1.2;
  }

  hasExecutedAttackOne = true;
} else if (sprite_index == spr_knight_attack_one &&
           round(image_index) != 2 &&
           instance_exists(attackBox) &&
           hasExecutedAttackOne) {
  //show_message("4");
  
  with (attackBox) {
    instance_destroy();
  }
}

if (kAction) {
  shouldExecuteAttackTwo = true;
}

if (!onGround) {
  state_switch("Air");
}
