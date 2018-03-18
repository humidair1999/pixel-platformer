/// @description Enemy lunge state
/// enemy_state_lunge();

// pause for steady amount of time before executing lunge

var scatterChance;

if (state_new) {
  vx = 0;
  vy = 0;
  sprite_state = "lunge";

  facing = sign(obj_player.x - x);
  if (facing == 0)
    facing = 1;
    
  leftToLungeDistance = lungeDistance;

  alarm[3] = 40;
}

if (alarm[3] <= 0) {
  sprite_state = "lungeAttack";
  
  if (!instance_exists(attackBox)) {
    attackBox = instance_create_layer(x + (40 * facing), y, "EnemiesLayer", obj_enemy_atk_box);
    
    with (attackBox) {
      image_xscale = 0.9;
      image_yscale = 0.9;
    }
  }
  else {
    with (attackBox) {
      x = other.x + (40 * other.facing);
    }
  }
  
  vx = leftToLungeDistance * facing;

  leftToLungeDistance = leftToLungeDistance * 0.75;
  
  if (leftToLungeDistance <= 1) {
    scatterChance = random_range(1, 10);
    
    if (scatterChance >= 3) {
      state_switch("Scatter");
    }
    else {
      state_switch("Prelunge");
    }
  }
}

if (!onGround) {
  state_switch("Air");
}
