/// @description Player attack two state
/// player_state_attack_two();

if (state_new) {
  vx = 0;
  vy = 0;
  image_index = 0;
  sprite_state = "attackingTwo";
  //stamina -= attackStaminaCost;

  shouldExecuteAttackTwo = false;
  hasExecutedAttackTwo = false;

  with (attackBox) {
    instance_destroy();
  }
}

if (sprite_index == spr_knight_attack_two &&
    round(image_index) == 1 &&
    !instance_exists(attackBox) &&
    !hasExecutedAttackTwo) {
  //show_message("3");

  attackBox = instance_create_layer(x + (40 * facing), y, "PlayerLayer", obj_player_atk_box);

  with (attackBox) {
    image_xscale = 1.1;
    image_yscale = 1.2;
  }

  hasExecutedAttackTwo = true;
} else if (sprite_index == spr_knight_attack_two &&
           round(image_index) != 1 &&
           instance_exists(attackBox) &&
           hasExecutedAttackTwo) {
  //show_message("4");
  
  with (attackBox) {
    instance_destroy();
  }
}

if (kAction) {
  shouldExecuteAttackThree = true;
}

if (!onGround) {
  state_switch("Air");
}