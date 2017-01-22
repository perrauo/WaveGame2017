///initializing what particles are going to look like (ready to be created)

//initialize our global dust particles

global.pt_1 = part_type_create();

//variable inside of script (local)
var pt = global.pt_1; 

///settings for particles
part_type_speed(pt,.5,5,0,0);
part_type_direction(pt, 0, 360,0,0);
part_type_gravity(pt, .5,270);
part_type_life(pt, 10,30);


//custom particles
part_type_sprite(pt,spr_particle1,false,false,false);
