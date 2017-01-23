

if (place_meeting(x, y+1, obj_Solid))//landing
{
    if ( alarm[0] == -1) //if alarm delayjump is off
    alarm[0] = 60; //sets it for 60 frames
    
  
    //show_debug_message("landing");
    Animation_State = Animation_States.IDLE;
    Current_State = Player_States.ON_GROUND;
    Num_Jumps = 0;
    Gravity = Init_Grav;
    
    
    
} else 
{
    Current_State = Player_States.ON_AIR;
    if (V_Speed < Min_Jump_Height) 
    {
        V_Speed += Gravity;
    }
    if (V_Speed >= 0 and Num_Jumps == Max_Jumps) {
        Gravity = 1.5;
    }
}

if (Key_Jump and Num_Jumps < Max_Jumps) //Jumping
{
    if(Num_Jumps == 0) //if it is the first jump, enforce the delay
    {
        if(alarm0EventAvailable) //enforce 60 frames delay
        {
        V_Speed = -Jump_Force;
          Num_Jumps++;
          alarm0EventAvailable = false; //make alarm0Event not available
         //set jump animation
         Animation_State = Animation_States.JUMPING;
        }
        
    }
    else //if second jump, then do not enforce delay
    {
    V_Speed = -Jump_Force;
    Num_Jumps++;
      //reset jump animation
     Animation_State = Animation_States.JUMPING;
    }
    
    
    
}
if (!Key_Jump_Hold and V_Speed < 0) {
    V_Speed = max(0, -Jump_Force*0.2);
    
    //set slam after at the second jump
    //Animation_State = Animation_States.SLAMMING;
}

if (V_Speed > 0) {
   // Animation_State = Animation_States.SLAMMING;
}


