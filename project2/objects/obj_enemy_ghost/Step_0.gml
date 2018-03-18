var scatterChance;

if (isDamaged) {
  if (!hasRunDamagedLogic) {
    scatterChance = random_range(1, 10);

    // need to tweak to move into appropriate state
    // depending on current state
    if (scatterChance >= 8) {
      state_switch("Scatter");
    }

    hasRunDamagedLogic = true;
    alarm[6] = damagedCooldown;
  }
  else {
    if (alarm[6] <= 0) {
      isDamaged = false;
      hasRunDamagedLogic = false;
    }
  }
}





if (alarm[7] <= 0) {
  ds_list_clear(collisionList);
}







state_execute();
