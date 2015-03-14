var index = argument1;
if (speed > 0) {

    if( (x-global.gridSize/2) mod global.gridSize == 0 && (y-global.gridSize/2) mod global.gridSize == 0){
        vspeed = 0;
        hspeed = 0;
    } 

} else {
    
    index += 1;
    var dir = string_extract(argument0,",",index);
    switch(dir){
        case("l"): hspeed = -global.enemySpeed;
        case("u"): vspeed = -global.enemySpeed;
        case("r"): hspeed = global.enemySpeed;
        case("d"): vspeed = global.enemySpeed;
    }
    
}
return index
