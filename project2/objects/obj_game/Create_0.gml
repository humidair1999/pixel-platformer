view_set_wport(0, room_width);
view_set_hport(0, room_height);

camera_set_view_size(view_camera[0], view_wport[0], view_hport[0]);

global.vw = camera_get_view_width(view_camera[0]);
global.vh = camera_get_view_height(view_camera[0]);

//timerGreen = $21DD83;
global.timerGreen = make_color_rgb(33, 221, 131);

//healthPink = $F22469;
global.healthPink = make_color_rgb(242, 36, 105);
//healthPinkLight = $F54C85;
global.healthPinkLight = make_color_rgb(245, 76, 133);
//healthPinkDark = $EF0050;
global.healthPinkDark = make_color_rgb(239, 0, 80);
