//show_debug_message(Current_State);
if(Key_Dash) and (((Dash > 0) and (Dash <5)) or ((Dash2 > 0) and (Dash2 <5)))
{
    if (H_Speed < 0){
        x-=10;
    } else if (H_Speed > 0){
        x+=10;
    }
}
