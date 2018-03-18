/// @description Player dodge state
/// player_state_dodge();

if (state_new) {
  leftToDodgeDistance = dodgeDistance;
  image_index = 2;
  sprite_state = "dodging";
  //stamina -= dodgeStaminaCost;
}

vx = leftToDodgeDistance * facing;

leftToDodgeDistance = leftToDodgeDistance * 0.75;

if (leftToDodgeDistance <= 1) {
  alarm[1] = dodgeCooldown;

  state_switch("Idle");
}
