event_inherited();

move_wrap(false, true, sprite_height);

if (hp <= 0) {
  instance_destroy();
  
  //global.enemiesKilled += 1;

  with (attackBox)
    instance_destroy();
}

state_update();
