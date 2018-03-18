event_inherited();

var bbox_height = (bbox_bottom + 1) - bbox_top;

y = clamp(y, 0, room_height + (bbox_height * 2));

// Pit death
if (bbox_top > room_height)
  instance_destroy();

if (hp <= 0) {
  instance_destroy();
}

state_update();
