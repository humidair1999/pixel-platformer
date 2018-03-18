if (!levelRunning) {
  with (obj_enemy_one_spawner) {
    instance_destroy();
  }
  
  with (obj_enemy_ghost_spawner) {
    instance_destroy();
  }

  with (obj_enemy) {
    instance_destroy();
  }
  
  with (obj_enemy_atk_box) {
    instance_destroy();
  }
  
  with (obj_enemy_ghost) {
    instance_destroy();
  }
}
else {
  global.enemiesKilledPercentage = (global.enemiesKilled / enemiesNeeded) * 100;

  if (global.enemiesKilled >= enemiesNeeded) {
    global.enemiesKilled = 0;

    instance_create_layer(640, 480, "CollectiblesLayer", obj_portal_shard);
  }
}
