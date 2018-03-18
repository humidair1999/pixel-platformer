/// @description Player attack three state
/// player_state_attack_three();

if (state_new) {
  vx = 0;
  vy = 0;
  image_index = 0;
  sprite_state = "attackingThree";
  //stamina -= attackStaminaCost;
  
  shouldExecuteAttackThree = false;
  hasExecutedAttackThree = false;

  with (attackBox) {
    instance_destroy();
  }
}

if (sprite_index == spr_knight_attack_three &&
    round(image_index) == 2 &&
    !instance_exists(attackBox) &&
    !hasExecutedAttackThree) {
  //show_message("3");

  attackBox = instance_create_layer(x + (45 * facing), y, "PlayerLayer", obj_player_atk_box);

  with (attackBox) {
    image_xscale = 1.4;
    image_yscale = 1.5;
  }

  hasExecutedAttackThree = true;
} else if (sprite_index == spr_knight_attack_three &&
           round(image_index) != 2 &&
           instance_exists(attackBox) &&
           hasExecutedAttackThree) {
  //show_message("4");
  
  with (attackBox) {
    instance_destroy();
  }
}

if (!onGround) {
  state_switch("Air");
}