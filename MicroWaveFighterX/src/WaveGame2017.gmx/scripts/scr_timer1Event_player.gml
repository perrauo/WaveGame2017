/// @description is called whenever the timer completes one cycle
/// @return boolean 
timer1++;
    
if(timer1==lim1)
{
timer1 = 0; //reset timer
return true;
}
else 
return false;
