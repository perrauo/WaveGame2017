#define Screen_Shake
///Screen_Shake(x, y)

var Sx = argument0;
var Sy = argument1;

if (instance_exists(obj_GameManager)) {
    obj_GameManager.Shake_X = Sx;
    obj_GameManager.Shake_Y = Sy;
}

