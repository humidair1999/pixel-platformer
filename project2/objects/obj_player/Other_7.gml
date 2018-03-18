if (sprite_index == spr_knight_attack_one) {
  image_index = 4;
  
  if (shouldExecuteAttackTwo) {
    state_switch("AttackTwo");
  }
  else {
    alarm[2] = attackCooldown;

    state_switch("Idle");
  }
}

if (sprite_index == spr_knight_attack_two) {
  image_index = 2;
  
  if (shouldExecuteAttackThree) {
    state_switch("AttackThree");
  }
  else {
    alarm[2] = attackCooldown;

    state_switch("Idle");
  }
}

if (sprite_index == spr_knight_attack_three) {
  image_index = 3;

  alarm[2] = attackCooldown;

  state_switch("Idle");
}
