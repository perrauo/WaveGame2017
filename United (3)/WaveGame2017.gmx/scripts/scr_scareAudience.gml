//ref to the menu
audienceManager = instance_find(obj_ctrl_audienceManager, 0);

if(!ds_stack_empty(audienceManager.population))//make sure stack is not empty
{
var a = ds_stack_pop(audienceManager.population);
a.walking = true;
}

if(!ds_stack_empty(audienceManager.population))
{
var b = ds_stack_pop(audienceManager.population);
b.walking = true;
}

if(!ds_stack_empty(audienceManager.population))
{
var c = ds_stack_pop(audienceManager.population);
c.walking = true;
}

if(!ds_stack_empty(audienceManager.population))
{
var d = ds_stack_pop(audienceManager.population);
d.walking = true;
}

if(!ds_stack_empty(audienceManager.population))
{
var e = ds_stack_pop(audienceManager.population);
e.walking = true;
}
