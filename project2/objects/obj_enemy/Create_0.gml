// Inherit oParEntity variables
event_inherited();

groundAccel = 1.00;
groundFric  = 2.00;
//airAccel    = 1.0;
//airFric     = 0.25;
vxMax       = 1.0;
vyMax       = 14.0;
jumpHeight  = 10.0;
gravNorm    = 0.5;

vxWander = 1.0;
vxDash = 5.0;
vxScatter = 7.0;

hp = 100;
maxHp = 100;
damagedCooldown = 10;
isDamaged = false;
hasRunDamagedLogic = false;






// Initialize properties

facing = image_xscale;




attackBox = noone;

lungeDistance = 50;
leftToLungeDistance = 0;

dashEnterSight = 450;
dashExitSight = 600;

lungeEnterSight = 120;
lungeExitSight = 200;

jumpSight = 50;
fallSight = 100;






///Setup State Machine for Platform Boy
state_machine_init();

//Define States
state_create("Warp", enemy_state_warp);
state_create("Idle", enemy_state_idle);
state_create("Wander", enemy_state_wander);
state_create("Air", enemy_state_air);
state_create("Prelunge", enemy_state_prelunge);
state_create("Lunge", enemy_state_lunge);
state_create("Dash", enemy_state_dash);
state_create("Scatter", enemy_state_scatter);

//Set the default state
state_init("Warp");




sprite_state = "warping";