// Input variables for debug room traversal
var kExit, kPrev, kNext;

kExit = keyboard_check_pressed(vk_escape);

if (keyboard_check_pressed(ord("R")))
  room_restart();

if (kExit)
  game_end();
