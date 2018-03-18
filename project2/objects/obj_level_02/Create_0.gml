levelRunning = true;


barColor = global.timerGreen;


enemyOneCooldownBase = 750;
enemyOneCooldown = enemyOneCooldownBase;
enemyGhostCooldownBase = 325;
enemyGhostCooldown = enemyGhostCooldownBase;

alarm[0] = enemyOneCooldown;
alarm[1] = enemyGhostCooldown;

numPortals = 2;
numPortalsMax = 2;
numPortalsFraction = numPortals / numPortalsMax;
numPortalsPercentage = (numPortals / numPortalsMax) * 100;


global.shouldBombSpawn = false;
