///Collide_With_Player(bounce)

var bounce = argument0;

if (place_meeting(x+(sign(H_Speed)*16), y, obj_ParentPlayer)) {
    H_Speed = -(sign(H_Speed) * bounce);
    Screen_Shake(12, 0);
}

