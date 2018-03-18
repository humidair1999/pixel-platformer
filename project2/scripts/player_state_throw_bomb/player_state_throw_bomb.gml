/// @description Player throw bomb state
/// player_state_throw_bomb();

var bombObj = noone;

if (state_new) {
  vx = 0;
  vy = 0;

  sprite_state = "idling";

  bombObj = instance_create_layer(x + (45 * facing), y, "PlayerLayer", obj_player_portal_bomb);
}

with (bombObj) {
  facing = other.facing;
}

hasBomb = false;

state_switch("Idle");

if (!onGround) {
  state_switch("Air");
}
