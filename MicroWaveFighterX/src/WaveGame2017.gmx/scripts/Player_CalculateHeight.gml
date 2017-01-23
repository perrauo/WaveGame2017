///calculate the height
    for(i = 0; i<100; i++)
    {
     if(place_meeting(x, y+i, obj_Solid))
     {
        calculating_height = 1;
     }
     else
     calculating_height = 0;
    
    }

if(calculating_height)
{
    for(i = 0; !place_meeting(x, y+i, obj_Solid); i++)
    {
    height = i;
    }


if(Key_Jump_Released)
return  height;
}

