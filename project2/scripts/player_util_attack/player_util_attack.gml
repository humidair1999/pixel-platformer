/// @description Utility script for Player attack
/// player_util_attack();

if (/* !kBlock && */ kAction) {
    if (state_name != "Attack" && !hasBomb) {
        // Attack out of roll
				/*
        if (onGround && state == ROLL) {
            image_index  = 0;
            image_speed  = 0.5;
            sprite_index = sPlayerRollSlash;
            
            alarm[1]  = 8; 
            attacking = true;       
        // Jab in place
				// see source file for proper comment
        }
				*/
				/* else */ if (onGround && canAttack) {
          //attacking = true;
          
          state_switch("Attack");
        }
    }
    else if (state_name != "ThrowBomb" && hasBomb) {
      if (onGround && canAttack) {
        state_switch("ThrowBomb");
      }
    }
}
