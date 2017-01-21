///particle on landing

 
if (place_meeting(x, y+1, obj_Solid)) //landing
{ 
    if(!landed)
    {
    part_emitter_region(global.ps_1, global.em_1,x,x,y,y+20,0,0);
    part_emitter_burst(global.ps_1, global.em_1, global.pt_1,20);
    
        show_debug_message("happy");
    }
}
