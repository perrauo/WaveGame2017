///calculate the height

    for(i = 0; !place_meeting(x, y+i, obj_Solid); i++)
    {
    height = i;
    }

if(Key_Jump_Released)
return  height;

