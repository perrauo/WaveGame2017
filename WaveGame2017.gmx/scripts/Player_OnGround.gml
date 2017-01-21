
if (place_meeting(x, y+1, obj_Solid)) 
{

if(!landed) //if the character hasnt landed and is about to..
{
 instance_create(x+5, y+20, obj_wave); //create a wave
 landed = 1; //set landed to true;
}



    if (Key_Jump) {
        V_Speed = -Jump_Force;
        
        //if jumping, then landing is false
        landed = 0;
    }
} else {
    if (V_Speed < Min_Jump_Height) {
        V_Speed += Gravity;
    }
}


