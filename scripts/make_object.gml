/// add new object to room

ts=find_tileset(r_objectgid)
new=r_objectgid-ds_list_find_value(ts,TS_FIRST)

//show_debug_message('obj: '+string(r_objectgid)+' ('+string(r_objectx)+','+string(r_objecty)+'), '+string(new))
if (new>=ds_list_size(obj))
{
    cobj=o_not_defined
}
else
{
    cobj=ds_list_find_value(obj,new)
}


last_object = room_instance_add(newroom,r_objectx+16,r_objecty-32+16,cobj)
