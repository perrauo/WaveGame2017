var gp_index, gp_result;

gp_result = false;

for(gp_index = 0; gp_index < 16; gp_index += 1) {
   if gamepad_button_check_pressed(0, gp_index) {
      gp_result = true;
   }
}

return gp_result;
