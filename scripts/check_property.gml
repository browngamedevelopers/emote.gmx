/// Properties check

set=false

switch (last_type)
{
    case T_MAP:
    {
        switch (r_property)
        {
/*
    You can add other MAP properties there
*/
            case 'bgcolor':
            {
                r_bgcolor=real(r_value)
                room_set_background_color(newroom,r_bgcolor,true)
                set=true
                break
            }
            
            case 'name':
            {
                //room_set_caption(newroom,r_value)
                set=true
                break
            }
            
        }
        break;
    }

    case T_LAYER:
    {
        switch (r_property)
        {
/*
    You can add other LAYER properties there
*/
            case 'depth':
            {
                t_depth = real(r_value)
                break
            }
        }
        break;
    }

        
    case T_OBJECT:
    {
        
        break;    
    }
}

if (set)
{
    r_property=noone
    r_value=noone
}
else
{
    ds_list_add(prop_names, r_property)
    ds_list_add(prop_values, r_value)
    ds_list_add(prop_id, last_object)
}
