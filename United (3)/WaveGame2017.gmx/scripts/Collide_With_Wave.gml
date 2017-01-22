
if (collision_point(x+H_Speed, y, obj_Wave, true, false)) {
    var Wave = collision_point(x+H_Speed, y, obj_Wave, true, false);  
      
        if ((Wave.image_index > 2 and Wave.image_index < 16) and Wave != my_w)
        {
        H_Speed = (Wave.wave_size)*sign(Wave.Speed);
        obj_GameManager.Shake = 12;
        with (Wave) {
            instance_destroy();
        }
        image_index++;
        }
    
}
