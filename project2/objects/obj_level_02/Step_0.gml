numPortals = instance_number(obj_portal);
numPortalsFraction = numPortals / numPortalsMax;
numPortalsPercentage = (numPortals / numPortalsMax) * 100;




enemyOneCooldown = enemyOneCooldownBase * numPortalsFraction;
enemyGhostCooldown = enemyGhostCooldownBase * numPortalsFraction;




if (numPortals == 0) {
  levelRunning = false;
}
