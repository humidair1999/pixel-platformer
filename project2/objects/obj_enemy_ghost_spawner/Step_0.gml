if (!instance_exists(spawnedEnemy) && alarm[0] <= 0) {
  spawnedEnemy = instance_create_layer(x, y, "EnemiesLayer", obj_enemy_ghost);
  
  alarm[1] = selfDestructTimer;

  shouldBeDestroyed = true;
}
else if (shouldBeDestroyed && alarm[1] <= 0) {
  instance_destroy();
}
