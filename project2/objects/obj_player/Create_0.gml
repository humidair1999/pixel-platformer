/// Variables

// Inherit oParEntity variables
event_inherited();


// Movement ///////////////////////////////////////////////////////////////////

groundAccel = 1.00;
groundFric  = 2.00;
airAccel    = 1.0;
airFric     = 0.25;
vxMax       = 3.0;
vyMax       = 14.0;
jumpHeight  = 10.0;
gravNorm    = 0.5;


hp = 3;
maxHp = 3;

damagedCooldown = 60;
isDamaged = false;







dodgeCooldown = 60;
dodgeDistance = 30;
leftToDodgeDistance = 0;
canDodge = true;




attackCooldown = 20;
canAttack = true;


hasBomb = false;



facing = image_xscale; // Change xscale in editor to adjust initial facing


attackBox = noone;

///////////////////////////////////////////////////////////////////////////////









kLeft = false;
kRight = false;
kUp = false;
kDown = false;
kJump = false;
kJumpRelease = false;
kAction = false;
kDodge = false;

tempAccel = 0;
tempFric = 0;


shouldExecuteAttackTwo = false;
shouldExecuteAttackThree = false;

hasExecutedAttackOne = false;
hasExecutedAttackTwo = false;
hasExecutedAttackThree = false;






///Setup State Machine for Platform Boy
state_machine_init();

//Define States
state_create("Idle", player_state_idle);
state_create("Walk", player_state_walk);
state_create("Air", player_state_air);
state_create("Dodge", player_state_dodge);
state_create("Attack", player_state_attack);
state_create("AttackTwo", player_state_attack_two);
state_create("AttackThree", player_state_attack_three);
state_create("ThrowBomb", player_state_throw_bomb);
//Set the default state
state_init("Idle");




sprite_state = "idling";
