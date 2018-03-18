var xsp = round(vx);
var ysp = round(vy);

x += xsp;
y += ysp;

if (hp <= 0) {
  instance_destroy();
  
  //global.enemiesKilled += 1;
}

state_update();
