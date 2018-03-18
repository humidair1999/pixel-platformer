levelRunning = true;

currentTimeSteps = 0;
currentTimeSeconds = 0;
remainingTimeSeconds = 0;
targetTimeSeconds = 60;
targetTimeSteps = seconds_to_steps(targetTimeSeconds);
percentageTime = 0;

currentPhase = 1;
barColor = global.timerGreen;

enum phaseTimes {
  two = 10,
  three = 20,
  four = 30
}

global.enemiesKilled = 0;
global.enemiesKilledPercentage = 0;
enemiesNeeded = 2;

global.gemsGrabbed = 0;

enemyOneCooldown = 750;
enemyGhostCooldown = 325;

alarm[0] = enemyOneCooldown;
alarm[1] = enemyGhostCooldown;





foregroundLayerId = layer_get_id("PlatformsForegroundLayer");
foregroundTilemapId = layer_tilemap_get_id(foregroundLayerId);

backgroundLayerId = layer_get_id("PlatformsBackgroundLayer");
backgroundTilemapId = layer_tilemap_get_id(backgroundLayerId);








platformTiles = ds_map_create();

platformTiles[? "empty"] = tilemap_get(backgroundTilemapId, 0, 0);
platformTiles[? "leftEdge"] = tilemap_get(foregroundTilemapId, 29, 12);
platformTiles[? "center"] = tilemap_get(foregroundTilemapId, 30, 12);
platformTiles[? "rightEdge"] = tilemap_get(foregroundTilemapId, 10, 12);
platformTiles[? "bottomLeftBackground"] = [0, 13];
platformTiles[? "bottomRightBackground"] = [10, 13];



topLeftPlatform = ds_map_create();

topLeftPlatform[? "startingCoords"] = [11, 9];
topLeftPlatform[? "length"] = round(random_range(4, 8));
topLeftPlatform[? "isActive"] = false;
topLeftPlatform[? "platformObj"] = noone;
topLeftPlatform[? "alarmNumber"] = 5;
topLeftPlatform[? "alarmValue"] = 120;

alarm[5] = topLeftPlatform[? "alarmValue"];

topCenterPlatform = ds_map_create();

topCenterPlatform[? "startingCoords"] = [15, 13];
topCenterPlatform[? "length"] = round(random_range(4, 8));
topCenterPlatform[? "isActive"] = false;
topCenterPlatform[? "platformObj"] = noone;
topCenterPlatform[? "alarmNumber"] = 6;
topCenterPlatform[? "alarmValue"] = 240;

alarm[6] = topCenterPlatform[? "alarmValue"];

topRightPlatform = ds_map_create();

topRightPlatform[? "startingCoords"] = [21, 15];
topRightPlatform[? "length"] = round(random_range(4, 8));
topRightPlatform[? "isActive"] = false;
topRightPlatform[? "platformObj"] = noone;
topRightPlatform[? "alarmNumber"] = 7;
topRightPlatform[? "alarmValue"] = 360;

alarm[7] = topRightPlatform[? "alarmValue"];



// TODO: create list containing platform position names
// then use this list as map keys

potentialPlatformLocations = ds_map_create();

ds_map_add_map(potentialPlatformLocations, "topLeft", topLeftPlatform);
ds_map_add_map(potentialPlatformLocations, "topCenter", topCenterPlatform);
ds_map_add_map(potentialPlatformLocations, "topRight", topRightPlatform);
