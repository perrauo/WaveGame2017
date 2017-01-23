//ref to the menu
audienceManager = instance_find(obj_ctrl_audienceManager, 0);


repeat(random_range(1,6)) //random ammount of people go
{
if(!ds_stack_empty(audienceManager.population))//make sure stack is not empty
{
var a = ds_stack_pop(audienceManager.population);
a.walking = true;
}
}


