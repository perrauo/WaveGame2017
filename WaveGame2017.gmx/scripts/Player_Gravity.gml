

if (place_meeting(x, y+1, obj_Solid)) {
    if (Key_Jump) {
        V_Speed = -Jump_Force;
    }
    Current_State = Player_States.ON_GROUND;
} else {
    Current_State = Player_States.ON_AIR;
    if (V_Speed < Min_Jump_Height) {
        V_Speed += Gravity;
    }
}

if (!Key_Jump_Hold and V_Speed < 0) {
    V_Speed = max(0, -Jump_Force*0.4);
}


