
if (collision_point(x+H_Speed, y, obj_Wave, true, false)) {
    var Wave = collision_point(x+H_Speed, y, obj_Wave, true, false);        
    if ((Wave.image_index > 2 and Wave.image_index < 16) and Wave != my_w) {
        H_Speed = 3*sign(Wave.Speed);
        with (Wave) {
            instance_destroy();
        }
        image_index++;
    }
}
