

var dir = string_extract(argument0,",",argument1);
switch(dir){
        case("l"): hspeed = -global.enemySpeed; break;
        case("u"): vspeed = -global.enemySpeed; break;
        case("r"): hspeed = global.enemySpeed; break;
        case("d"): vspeed = global.enemySpeed; break;
}


