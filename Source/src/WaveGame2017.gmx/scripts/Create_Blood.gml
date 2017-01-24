///Create_Blood(col ,side)
var P_Color = argument0;
var Side = argument1;

var count = random_range(12, 32);

for (var i = 0; i < count; i++) {
    if (Side == "Right") {
        var This_Blood = instance_create(view_wview, random_range(0, room_height-50), obj_BloodDrop);
    } else if (Side == "Left") {
        var This_Blood = instance_create(view_xview, random_range(0, room_height-50), obj_BloodDrop);
    }
    instance_destroy();
    This_Blood.Color = P_Color;
}
