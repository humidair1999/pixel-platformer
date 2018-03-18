/// @description Create programmatically-generated floating
/// platforms with collision boxes

var currentPlatform = argument0;

var currentPlatformCoords = currentPlatform[? "startingCoords"];
var currentPlatformLength = currentPlatform[? "length"];
var currentPlatformAlarmNumber = currentPlatform[? "alarmNumber"];
var currentPlatformAlarmValue = currentPlatform[? "alarmValue"];

var bottomLeftBackgroundCoords = platformTiles[? "bottomLeftBackground"];
var bottomRightBackgroundCoords = platformTiles[? "bottomRightBackground"];

if (!currentPlatform[? "isActive"]) {
  for (var i = 0; i < currentPlatformLength; i += 1) {
    if (i == 0) {
      tilemap_set(foregroundTilemapId,
          platformTiles[? "leftEdge"],
          currentPlatformCoords[0] + i,
          currentPlatformCoords[1]);
    }
    else if (i > 0 && i < currentPlatformLength - 1) {
      tilemap_set(foregroundTilemapId,
          platformTiles[? "center"],
          currentPlatformCoords[0] + i,
          currentPlatformCoords[1]);
    }
    else {
      tilemap_set(foregroundTilemapId,
          platformTiles[? "rightEdge"],
          currentPlatformCoords[0] + i,
          currentPlatformCoords[1]);
    }

    tilemap_set(backgroundTilemapId,
        tilemap_get(backgroundTilemapId,
            random_range(bottomLeftBackgroundCoords[0],
            bottomRightBackgroundCoords[0]),
            bottomLeftBackgroundCoords[1]),
        currentPlatformCoords[0] + i,
        currentPlatformCoords[1] + 1);
  }
      
  if (!instance_exists(currentPlatform[? "platformObj"])) {
    var xPos = currentPlatformCoords[0] * 32;
    var yPos = currentPlatformCoords[1] * 32;
    
    currentPlatform[? "platformObj"] =
        instance_create_layer(xPos, yPos, "PlatformsLayer", obj_jump_thru);
    
    with (currentPlatform[? "platformObj"]) {
      image_xscale = currentPlatformLength;
      image_yscale = 0.5;
    }
  }
      
  alarm[currentPlatformAlarmNumber] = currentPlatformAlarmValue;
  currentPlatform[? "isActive"] = true;
}
else {
  for (var i = 0; i < currentPlatformLength; i += 1) {
    tilemap_set(foregroundTilemapId,
        platformTiles[? "empty"],
        currentPlatformCoords[0] + i,
        currentPlatformCoords[1]);
            
    tilemap_set(backgroundTilemapId,
        platformTiles[? "empty"],
        currentPlatformCoords[0] + i,
        currentPlatformCoords[1] + 1);
  }

  if (instance_exists(currentPlatform[? "platformObj"])) {
    instance_destroy(currentPlatform[? "platformObj"]);
  }
      
  alarm[currentPlatformAlarmNumber] = currentPlatformAlarmValue;
  currentPlatform[? "isActive"] = false;
}
