///SpawnWave(int WaveSize)
height = argument0;
//determine wave size based on the character's jump height
if(scr_between(height,60,100))
wave_size = 10;//size 10
else if(scr_between(height,55,60))
wave_size = 9;//size 9
else if(scr_between(height,50,55))
wave_size = 8;//size 8
else if(scr_between(height,40,45))
wave_size = 7;//size 7
else if(scr_between(height,35,40))
wave_size = 6;//size 6
else if(scr_between(height,30,35))
wave_size = 5; //size 5;
else if(scr_between(height,25,30))
wave_size = 4; //size 4;
else if(scr_between(height,20,25))
wave_size = 3; //size 3;
else if(scr_between(height,15,20))
wave_size = 2; //size 2;



if (place_meeting(x, y+1, obj_Solid)) //landing
{ 
   if(!landed)
{
    my_w = instance_create(x+obj_ParentPlayer.sprite_width/2, y+17, obj_Wave);
    my_w.wave_size = wave_size;
    my_w.Speed = (my_w.Init_Speed*wave_Direction);
    landed = 1;
}
       
}

if (Key_Jump and Num_Jumps < Max_Jumps) // check if Jumping
{
    //set landed to false when jumping
    landed = 0;
}
