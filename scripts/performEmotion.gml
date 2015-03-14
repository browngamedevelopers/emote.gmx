if(object_index == objPlayer){
switch(argument0){
    case "anger":
        if(tmrAngerToggleCooldown==-1){
            isAngry = true;
            tmrAngerToggleCooldown = global.angerToggleCooldown;
            tmrAngerCooldown = global.angerCooldown;
        }
        
    break;
    case "laziness":
        if(tmrLazyToggleCooldown==-1){
            isLazy = true;
            tmrLazyToggleCooldown = global.lazyToggleCooldown;
            tmrLazyCooldown = global.lazyCooldown;
            room_speed/=global.lazyFactor;
            global.playerSpeed *=global.lazyFactor;
        }
    break;
    case "excitement":
        if(tmrExciteToggleCooldown==-1){
            isExcited = true;
            tmrExciteToggleCooldown = global.exciteToggleCooldown;
            tmrExciteCooldown = global.exciteCooldown;
            global.playerSpeed *=global.exciteFactor;
        }
    break;
}


}
