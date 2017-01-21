///Player_Collision(hor, vert)

var Is_Hor = argument0;
var Is_Vert = argument1;

if (Is_Hor) {
    if (place_meeting(x+H_Speed, y, obj_Solid)) {
        while (!place_meeting(x+sign(H_Speed), y, obj_Solid)) {
            x += sign(H_Speed);
        }
        H_Speed = 0;
    }
}

x += H_Speed;

if (Is_Vert) {
    if (place_meeting(x, y+V_Speed, obj_Solid)) {
        while (!place_meeting(x, y+sign(V_Speed), obj_Solid)) {
            y += sign(V_Speed);
        }
        V_Speed = 0;
    }
}

y += V_Speed;

