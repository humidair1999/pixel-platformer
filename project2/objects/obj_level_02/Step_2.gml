if (!levelRunning) {
  with (obj_portal) {
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
  var randX = random_range(50, global.vw - 50);
  var randY = random_range(150, global.vh - 100);

  if (alarm[0] <= 0) {
    instance_create_layer(randX, randY, "EnemiesLayer", obj_enemy);
  
    alarm[0] = enemyOneCooldown;
  }

  randX = random_range(50, global.vw - 50);
  randY = random_range(150, global.vh - 100);

  if (alarm[1] <= 0) {
    instance_create_layer(randX, randY, "EnemiesLayer", obj_enemy_ghost);
  
    alarm[1] = enemyGhostCooldown;
  }
  
  
  
  
  
  if (global.shouldBombSpawn) {
    instance_create_layer(1168, 592, "CollectiblesLayer", obj_portal_bomb);
    
    global.shouldBombSpawn = false;
  }
}
