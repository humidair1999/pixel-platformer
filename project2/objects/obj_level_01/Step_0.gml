var randX = random_range(50, global.vw - 50);
//var randY = random_range(50, global.vh - 450);

if (levelRunning && alarm[0] <= 0) {
  instance_create_layer(randX, 110, "SpawnerLayer", obj_enemy_one_spawner);
  
  alarm[0] = enemyOneCooldown;
}

randX = random_range(50, global.vw - 50);
randY = random_range(50, global.vh - 450);

if (levelRunning && alarm[1] <= 0) {
  instance_create_layer(randX, 110, "SpawnerLayer", obj_enemy_ghost_spawner);
  
  alarm[1] = enemyGhostCooldown;
}








if (currentTimeSteps < targetTimeSteps) {
  currentTimeSteps++;
  currentTimeSeconds = steps_to_seconds(currentTimeSteps);
  remainingTimeSeconds = targetTimeSeconds - currentTimeSeconds;
  percentageTime = (currentTimeSteps / targetTimeSteps) * 100;

  levelRunning = true;
}
else {
  levelRunning = false;
}






if (currentTimeSeconds >= phaseTimes.four && global.gemsGrabbed < 4) {
  currentPhase = 4;
}
else if ((currentTimeSeconds >= phaseTimes.three && global.gemsGrabbed < 3) ||
        (currentPhase == 4 && global.gemsGrabbed >= 4)) {
  currentPhase = 3;
}
else if ((currentTimeSeconds >= phaseTimes.two && global.gemsGrabbed < 2) ||
         (currentPhase == 3 && global.gemsGrabbed >= 3)) {
  currentPhase = 2;
}







switch (currentPhase) {
  case 2:
    enemyOneCooldown = 500;
    enemyGhostCooldown = 275;

    barColor = c_yellow;
    break;
  case 3:
    enemyOneCooldown = 300;
    enemyGhostCooldown = 150;
    
    barColor = c_orange;
    break;
  case 4:
    enemyOneCooldown = 100;
    enemyGhostCooldown = 60;
    
    barColor = c_red;
    break;
}
