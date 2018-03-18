//var healthX = (((global.vw * 0.25) - (global.vw * 0.025)) / 2) + (global.vw * 0.025);

with (obj_player) {
  //draw_healthbar(global.vw * 0.025, 10, global.vw * 0.25, 30, hp,
      //c_black, global.healthPink, global.healthPink, 0, true, false);
  //draw_set_halign(fa_center);
  //draw_text(healthX, 10, string(hp));
  //draw_set_halign(fa_left);
  
  //draw_sprite(spr_heart_full, 0, 100, 100);
  
  for (var i = 0; i < maxHp; i += 1) {
    if (i + 1 <= hp) {
      draw_sprite_ext(spr_heart_full, 0, 10 + (i * 44), 10, 1, 1, 0, c_white, 1);
    }
    else {
      draw_sprite_ext(spr_heart_full, 0, 10 + (i * 44), 10, 1, 1, 0, c_black, 1);
    }
  }
}

with (obj_level_01) {
  draw_healthbar(global.vw * 0.25, 20, global.vw * 0.75, 40, percentageTime,
      c_black, barColor, barColor, 0, true, false);
  draw_set_halign(fa_center);
  draw_text(global.vw * 0.5, 20, "Time to collapse: " + string(remainingTimeSeconds));
  draw_set_halign(fa_left);
  
  /*
  draw_healthbar(global.vw * 0.25, 50, global.vw * 0.75, 70, global.enemiesKilledPercentage,
      c_black, global.timerGreen, global.timerGreen, 0, true, false);
  draw_set_halign(fa_center);
  draw_text(global.vw * 0.5, 50, "Enemies killed: " + string(global.enemiesKilled));
  draw_set_halign(fa_left);
  */
}

with (obj_level_02) {
  draw_healthbar(global.vw * 0.25, 20, global.vw * 0.75, 40, numPortalsPercentage,
      c_black, barColor, barColor, 0, true, false);
  draw_set_halign(fa_center);
  draw_text(global.vw * 0.5, 20, "Portals remaining: " + string(numPortals));
  draw_text(global.vw * 0.35, 45, "Humanoid spawn rate: " + string(enemyOneCooldown));
  draw_text(global.vw * 0.65, 45, "Ghost spawn rate: " + string(enemyGhostCooldown));
  draw_set_halign(fa_left);
}
