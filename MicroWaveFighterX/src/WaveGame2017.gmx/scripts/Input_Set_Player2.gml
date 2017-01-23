/*var gp_num = gamepad_get_device_count();
for (var i = 0; i < gp_num; i++;)
{
    if(gamepad_is_connected(i)) 
    {
        global.gp[i] = true 
    }
    else
    { 
        global.gp[i] = false;
    }
}*/
if(global.gp[1] == true)
{
    if(gamepad_axis_value(1, gp_axislh) > 0.2)
    {
        Key_Right = true;
    }
    else
    {
        Key_Right = false;
    }
    if(gamepad_axis_value(1, gp_axislh) < -0.2)
    {
        Key_Left = true;
    }
    else
    {
        Key_Left = false;
    }
    //Key_Left = keyboard_check(vk_left);
    Key_Jump_Hold = gamepad_button_check(1, gp_face1);//keyboard_check(vk_up);
    Key_Jump = gamepad_button_check_pressed(1, gp_face1);
    Key_Jump_Released = gamepad_button_check_released(1, gp_face1);
    Key_Dash_Released = gamepad_button_check_released(1, gp_face2);
    Key_Dash = gamepad_button_check(1, gp_face2);
    if (Key_Dash){
        Dash2 += 1;
    } 
    if(gamepad_button_check_released(1, gp_face2)){
        Dash2 = 0;
    }
}
else
{
    Key_Right = keyboard_check(vk_right);
    Key_Left = keyboard_check(vk_left);
    Key_Jump_Hold = keyboard_check(vk_up);
    Key_Jump = keyboard_check_pressed(vk_up);
    Key_Jump_Released = keyboard_check_released(vk_up);
    Key_Dash = keyboard_check(vk_down);
    if (Key_Dash){
        Dash += 1;
    } 
    if(keyboard_check_released(vk_down)){
        Dash = 0;
    }
    
    
}

