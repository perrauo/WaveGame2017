///UpdateTimer()
draw_set_alpha(1);
draw_set_colour(c_black);
CurrentTime = StartingTime - floor(get_timer()/1000000);
Minute = floor(CurrentTime/60)
Second = CurrentTime - (Minute * 60);
if(Minute <= 0)
{
    if(Second <= 0)
    {
        //room_goto_next();
    }
}
if(Second < 10)
{
    draw_text(x, y, string(Minute) + ":0" + string(Second));
}
else
{
    draw_text(x, y, string(Minute) + ":" + string(Second));   
}
