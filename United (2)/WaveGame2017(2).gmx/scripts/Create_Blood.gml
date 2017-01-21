///Create_Blood(col)
var P_Color = argument0;

var count = random_range(4, 32);

for (var i = 0; i < count; i++) {
    var This_Blood = instance_create(x + random_range(-60, 60), y + random_range(-60, 60), obj_BloodDrop);
    This_Blood.Color = P_Color;
}
