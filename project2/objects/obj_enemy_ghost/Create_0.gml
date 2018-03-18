// Velocity
vx = 0;
vy = 0;

vxMax = 1.0;
vyMax = 1.0;
vxMaxScatter = 4.0;
vyMaxScatter = 4.0;
airAccel = 0.5;

hp = 100;
maxHp = 100;
damagedCooldown = 10;
isDamaged = false;
hasRunDamagedLogic = false;

facing = image_xscale;

collisionList = ds_list_create();
collisionCooldown = 60;

///Setup State Machine
state_machine_init();

//Define States
state_create("Warp", enemy_ghost_state_warp);
state_create("Idle", enemy_ghost_state_idle);
state_create("Pursue", enemy_ghost_state_pursue);
state_create("Scatter", enemy_ghost_state_scatter);

//Set the default state
state_init("Warp");

spriteState = "warping";
