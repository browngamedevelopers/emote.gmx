/// check properties for object in properties-list

var a;
a=ds_list_find_index(prop_id,argument0)
if (a<0) { return (false) }
nam=ds_list_find_value(prop_names, a)
val=ds_list_find_value(prop_values, a)
ds_list_delete(prop_names, a)
ds_list_delete(prop_values, a)
ds_list_delete(prop_id, a)
return (true)

