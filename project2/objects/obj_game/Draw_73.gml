var isDebugging = false;

if (isDebugging) {
  draw_set_halign(fa_right);
  draw_text(global.vw - 10, 10, "fps: " + string(fps));
  draw_text(global.vw - 10, 30, "vw: " + string(global.vw));
  draw_text(global.vw - 10, 50, "vh: " + string(global.vh));
  draw_text(global.vw - 10, 70, "# enemy: " + string(instance_number(obj_enemy)));
  draw_text(global.vw - 10, 90, "# ghost: " + string(instance_number(obj_enemy_ghost)));
  draw_text(global.vw - 10, 110, "room: " + room_get_name(room));
  draw_set_halign(fa_left);
  
  with (obj_player) {
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);

    draw_text(10, 60, "player state: " + string(state_name) + ", vx: " + string(vx));
    draw_text(10, 80, "canDodge: " + string(canDodge));
    draw_text(10, 100, "canAttack: " + string(canAttack));
  }

  with (obj_enemy) {
	  draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
    
    draw_set_color(c_yellow);
    draw_line(x - lungeEnterSight, y - 3, x + lungeEnterSight, y - 3);
    draw_line(x - lungeExitSight, y - 1, x + lungeExitSight, y - 1);
    
    draw_set_color(c_fuchsia);
    draw_line(x - dashEnterSight, y + 3, x + dashEnterSight, y + 3);
    draw_line(x - dashExitSight, y + 1, x + dashExitSight, y + 1);
    
    draw_set_color(c_teal);
    draw_line(x, y - jumpSight, x, y);
    //draw_line(x, y + fallSight, x, y);
    draw_rectangle(bbox_left - 60, y + 30, bbox_right + 60, y + fallSight, true);
    
    draw_set_color(c_white);
    
    draw_text(bbox_left - 40, bbox_top - 60, "state: " + string(state_name) /* + ", vx: " + string(vx) */ );
	}
  
  with (obj_portal) {
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
  }
  
  with (obj_enemy_ghost) {
	  draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
    
    draw_text(bbox_left - 40, bbox_top - 60, "state: " + string(state_name) /* + ", vx: " + string(vx) */ );
	}

	with (obj_block) {
	  draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}

	with (obj_jump_thru) {
	  draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, true);
	}
	
	with (obj_player_atk_box) {
		draw_set_color(c_yellow);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
		draw_set_color(c_white);
	}
  
  with (obj_enemy_atk_box) {
		draw_set_color(c_yellow);
		draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, false);
		draw_set_color(c_white);
	}
}
