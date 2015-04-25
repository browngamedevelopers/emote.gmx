lives -= 1;
with(objPlayer){
    visible = false;
    instance_destroy();
    instance_create(x,y,objPlayerDeath);
}
