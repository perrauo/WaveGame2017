

if (place_meeting(x, y+1, obj_Solid)) {
    if (Key_Jump) {
        V_Speed = -Jump_Force;
    }
} else {
    if (V_Speed < Min_Jump_Height) {
        V_Speed += Gravity;
    }
}
